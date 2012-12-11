class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :fedexVehicleNumber
      t.string :fedexVehicleName
      t.integer :contractorNumber
      t.string :contractorName
      t.string :vin
      t.datetime :startDate
      t.datetime :endDate
      t.boolean :activeBoolean

      t.timestamps
    end
  end
end
