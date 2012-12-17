class CreateProductionPays < ActiveRecord::Migration
  def change
    create_table :production_pays do |t|
      t.decimal :delivery_package_pay
      t.decimal :delivery_stop_pay
      t.decimal :pickup_package_pay
      t.decimal :pickup_stop_pay
      t.decimal :hourly_pay
      t.decimal :task_pay
      t.decimal :incident_dock_pay
      t.datetime :startDate
      t.datetime :endDate
      t.boolean :activeBoolean

      t.timestamps
    end
  end
end
