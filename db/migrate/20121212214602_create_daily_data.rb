class CreateDailyData < ActiveRecord::Migration
  def change
    create_table :daily_data do |t|
      t.integer :deliveryStop
      t.integer :deliveryPackage
      t.integer :pickupStop
      t.integer :pickupPackage
      t.integer :calltag
      t.integer :didNotAttempt
      t.decimal :inboundLocalService
      t.integer :earlyPickUp
      t.integer :latePickUp
      t.datetime :startTime
      t.datetime :endTime

      t.timestamps
    end
  end
end
