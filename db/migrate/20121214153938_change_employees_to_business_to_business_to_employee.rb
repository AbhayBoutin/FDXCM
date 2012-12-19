class ChangeEmployeesToBusinessToBusinessToEmployee < ActiveRecord::Migration
  def up
		remove_column :businesses, :employee_id
		add_column :employees, :business_id, :integer
  end

  def down
  	remove_column :employees, :business_id
  end
end
