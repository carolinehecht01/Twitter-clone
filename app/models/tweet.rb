class Tweet < ApplicationRecord

	belongs_to :user

	validates :message, presence: true
	validates :message, length: {maximum: 250, too_long: "This isn't facebook. 250 characters max"}
end
