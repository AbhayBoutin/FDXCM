class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :frequencyInterval
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
