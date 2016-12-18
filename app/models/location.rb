class Location < ApplicationRecord
  has_many :presences
  has_many :users, through: :presences
end
