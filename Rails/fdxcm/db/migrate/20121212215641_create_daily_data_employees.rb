class CreateDailyDataEmployees < ActiveRecord::Migration
  def change
    create_table :daily_data_employees do |t|
      t.belongs_to :employee
      t.belongs_to :dailyData

      t.timestamps
    end
    add_index :daily_data_employees, :employee_id
    add_index :daily_data_employees, :dailyData_id
  end
end
