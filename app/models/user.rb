class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :games
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'
  has_many :sended_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_one :company
  devise :omniauthable, :omniauth_providers => [:facebook]
  def messages
    received_messages + sended_messages
  end
  has_many :posts

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name.split[0]   # assuming the user model has a name
      user.last_name = auth.info.name.split[1]
      # user.image = auth.info.image # assuming the user model has an image
    end
  end
end
