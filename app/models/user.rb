require "open-uri"
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "original/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    "#{first_name} #{last_name}"
  end

  def plec
    self.gender ? 'Female' : 'Male'
  end

  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sended_messages, class_name: 'Message', foreign_key: 'sender_id'
  devise :omniauthable, :omniauth_providers => [:facebook]
  def messages
    received_messages + sended_messages
  end
  has_many :posts
  has_many :presences
  has_many :locations, through: :presences 
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name.split[0]   # assuming the user model has a name
      user.last_name = auth.info.name.split[1]
      img = auth.info.image.sub('http', 'https') unless auth.info.image.include?('https')
      user.avatar = open(img)
    end
  end
end
