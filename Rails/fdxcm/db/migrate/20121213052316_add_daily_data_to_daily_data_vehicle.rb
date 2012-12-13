class AddDailyDataToDailyDataVehicle < ActiveRecord::Migration
  def change
		change_table :dailyDataVehicles do |t|
	    add_column :daily_data_vehicles, :daily_data_id, :integer
	    add_index :daily_data_vehicles, :daily_data_id
		end
  end
end
