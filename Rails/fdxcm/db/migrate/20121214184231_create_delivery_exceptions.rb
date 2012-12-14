class CreateDeliveryExceptions < ActiveRecord::Migration
  def change
    create_table :delivery_exceptions do |t|
      t.string :exceptionType
      t.text :exceptionDescription

      t.timestamps
    end
  end
end
