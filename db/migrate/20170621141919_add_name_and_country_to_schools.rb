class AddNameAndCountryToSchools < ActiveRecord::Migration[5.1]
  def change
    add_column :schools, :name, :string
    add_column :schools, :country, :string
  end
end
