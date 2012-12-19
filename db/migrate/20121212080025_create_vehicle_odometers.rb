class CreateVehicleOdometers < ActiveRecord::Migration
  def change
    create_table :vehicle_odometers do |t|
      t.integer :odometerReading
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
