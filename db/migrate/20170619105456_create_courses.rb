class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.integer :std
      t.string :course
      t.string :dept
      t.integer :code

      t.timestamps
    end
  end
end
