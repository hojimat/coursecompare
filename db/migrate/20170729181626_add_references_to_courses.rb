class AddReferencesToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :school, foreign_key: true
    add_reference :courses, :dept, foreign_key: true
  end
end
