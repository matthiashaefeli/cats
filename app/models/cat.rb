class Cat < ApplicationRecord

	belongs_to :user
	has_many :events
	has_many :catvotes
	validates :name, presence: true
	mount_uploader :avatar, AvatarUploader

end
