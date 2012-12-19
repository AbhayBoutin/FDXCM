class CreateDailyDataVehicles < ActiveRecord::Migration
  def change
    create_table :daily_data_vehicles do |t|
      t.belongs_to :vehicle

      t.timestamps
    end
    add_index :daily_data_vehicles, :vehicle_id
  end
end
