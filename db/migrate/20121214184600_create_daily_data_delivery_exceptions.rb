class CreateDailyDataDeliveryExceptions < ActiveRecord::Migration
  def change
    create_table :daily_data_delivery_exceptions do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.belongs_to :dailyData
      t.belongs_to :deliveryException

      t.timestamps
    end
    add_index :daily_data_delivery_exceptions, :dailyData_id
    add_index :daily_data_delivery_exceptions, :deliveryException_id
  end
end
