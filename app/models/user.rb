class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :cats
  has_many :events
  has_many :uservotes

  validates_uniqueness_of :email

  geocoded_by :street   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
