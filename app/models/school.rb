class School < ApplicationRecord
	has_many :depts
	has_many :courses, through: :depts
end
