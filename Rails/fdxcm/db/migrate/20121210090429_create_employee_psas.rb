class CreateEmployeePsas < ActiveRecord::Migration
  def change
    create_table :employee_psas do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.boolean :activeBoolean
      t.belongs_to :employee
      t.belongs_to :psa

      t.timestamps
    end
    add_index :employee_psas, :employee_id
    add_index :employee_psas, :psa_id
  end
end
