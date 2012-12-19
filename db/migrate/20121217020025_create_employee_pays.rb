class CreateEmployeePays < ActiveRecord::Migration
  def change
    create_table :employee_pays do |t|
      t.belongs_to :employee
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
    add_index :employee_pays, :employee_id
  end
end
