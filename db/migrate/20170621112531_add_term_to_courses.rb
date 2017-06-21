class AddTermToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :term, :string
  end
end
