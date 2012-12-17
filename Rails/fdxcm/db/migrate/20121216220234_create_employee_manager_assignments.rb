class CreateEmployeeManagerAssignments < ActiveRecord::Migration
  def change
    create_table :employee_manager_assignments do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.boolean :activeBoolean
      t.belongs_to :employee

      t.timestamps
    end
    add_index :employee_manager_assignments, :employee_id
  end
end
