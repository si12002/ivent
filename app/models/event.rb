class Event < ActiveRecord::Base

	has_many :entries
	has_many :manages
end
