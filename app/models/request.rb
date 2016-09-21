class Request < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode

	belongs_to :user
	has_many :items
end
