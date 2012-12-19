class ChangeEmployeesToBusinessToBusinessToEmployee < ActiveRecord::Migration
  def up
		remove_column :businesses, :employees_id
		add_column :employees, :business_id, :integer
  end

  def down
    add_column :businesses, :employees_id, :integer
  	remove_column :employees, :business_id
  end
end
