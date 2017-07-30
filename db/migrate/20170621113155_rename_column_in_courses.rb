class RenameColumnInCourses < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :course, :school
  end
end
