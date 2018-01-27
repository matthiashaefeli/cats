class Catvote < ApplicationRecord

	belongs_to :user
	belongs_to :cat
	belongs_to :event
end
