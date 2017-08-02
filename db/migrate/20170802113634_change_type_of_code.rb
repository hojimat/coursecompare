class ChangeTypeOfCode < ActiveRecord::Migration[5.1]
  def change
	change_column :courses, :code, :string
  end
end
