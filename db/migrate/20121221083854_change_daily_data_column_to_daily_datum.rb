class ChangeDailyDataColumnToDailyDatum < ActiveRecord::Migration
  def up
    rename_column :daily_data_employees, :dailyData_id, :dailyDatum_id
  end

  def down
    rename_column :daily_data_employees, :dailyDatum_id, :dailyData_id
  end
end
