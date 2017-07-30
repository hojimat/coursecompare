class AddReferencesToDepts < ActiveRecord::Migration[5.1]
  def change
    add_reference :depts, :school, foreign_key: true
  end
end
