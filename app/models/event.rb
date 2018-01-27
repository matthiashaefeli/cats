class Event < ApplicationRecord
	belongs_to :cat
	belongs_to :user
	has_one :catvote
end
