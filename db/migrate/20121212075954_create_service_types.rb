class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :serviceType
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
