class Message < ApplicationRecord

	belongs_to :user, foreign_key: :from_id
end
