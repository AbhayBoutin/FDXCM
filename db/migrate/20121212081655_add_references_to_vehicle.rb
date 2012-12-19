class AddReferencesToVehicle < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.references :service_type
    end 
  end
 
  def self.down
    change_table :vehicles do |t|
      t.remove :service_type
    end
  end
end
