class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :lastName
      t.integer :fedexNumber
      t.integer :contractorNumber
      t.date :hireDate
      t.date :dateOfBirth
      t.boolean :activeBoolean
      t.datetime :startDate
      t.datetime :endDate
      t.datetime :terminationDate

      t.timestamps
    end
  end
end
