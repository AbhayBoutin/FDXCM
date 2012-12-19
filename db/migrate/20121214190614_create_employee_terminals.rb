class CreateEmployeeTerminals < ActiveRecord::Migration
  def change
    create_table :employee_terminals do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.boolean :activeBoolean
      t.belongs_to :employee
      t.belongs_to :terminal

      t.timestamps
    end
    add_index :employee_terminals, :employee_id
    add_index :employee_terminals, :terminal_id
  end
end
