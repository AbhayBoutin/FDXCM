class RemoveEmployeesFromBusinesses < ActiveRecord::Migration
  def up
    remove_column :businesses, :employees
  end

  def down
    add_column :businesses, :employees, :integer
  end
end
