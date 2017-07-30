class Course < ApplicationRecord
	belongs_to :school
	belongs_to :dept
end
