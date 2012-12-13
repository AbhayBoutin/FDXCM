class AddServiceTypeIndexToVehicle < ActiveRecord::Migration
  def change
    add_index :vehicles, :service_type_id
  end
end
