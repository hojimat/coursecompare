class AddCountryToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :country, :string
  end
end
