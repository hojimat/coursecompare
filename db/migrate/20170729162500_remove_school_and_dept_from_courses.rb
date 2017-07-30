class RemoveSchoolAndDeptFromCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :school, :string
    remove_column :courses, :dept, :string
  end
end
