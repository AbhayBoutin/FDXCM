class AddEmployeesToBusiness < ActiveRecord::Migration
  def change
		change_table :businesses do |t|
			t.references :employees
		end
  end
end
