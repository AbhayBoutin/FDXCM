class CreateVehicleTypes < ActiveRecord::Migration
  def change
    create_table :vehicle_types do |t|
      t.string :vehicleSize
      t.boolean :bulkBoolean
      t.string :bodyMake
      t.string :bodyModel

      t.timestamps
    end
  end
end
