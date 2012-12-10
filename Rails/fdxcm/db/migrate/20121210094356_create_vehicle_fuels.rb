class CreateVehicleFuels < ActiveRecord::Migration
  def change
    create_table :vehicle_fuels do |t|
      t.string :fuelType
      t.integer :fuelTankSize
      t.integer :mpg

      t.timestamps
    end
  end
end
