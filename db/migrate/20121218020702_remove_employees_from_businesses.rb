class RemoveEmployeesFromBusinesses < ActiveRecord::Migration
  def up
    remove_column :businesses, :employees_id
  end

  def down
    add_column :businesses, :employees_id, :integer
  end
end
