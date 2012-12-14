class AddVehiclesToBusinesses < ActiveRecord::Migration
  def change
		add_column :vehicles, :business_id, :integer
  end
end
