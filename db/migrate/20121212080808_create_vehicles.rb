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
      t.references :vehicleType
      t.references :vehicleFuel
      t.references :vehicleOdometer

      t.timestamps
    end
    add_index :vehicles, :vehicleType_id
    add_index :vehicles, :vehicleFuel_id
    add_index :vehicles, :vehicleOdometer_id
  end
end
