class AddReferencesToVehicle < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.references :service_type
      t.references :vehicle_type
      t.references :vehicle_fuel
      t.references :vehicle_odometer
    end 
  end
 
  def self.down
    change_table :vehicles do |t|
      t.remove :service_type
      t.remove :vehicle_type
      t.remove :vehicle_fuel
      t.remove :vehicle_odometer
    end
  end
end
