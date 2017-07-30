class RemoveDeptsFromCourses < ActiveRecord::Migration[5.1]
  def change
	remove_column :courses, :dept_id
  end
end
