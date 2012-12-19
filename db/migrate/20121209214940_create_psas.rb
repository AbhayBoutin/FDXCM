class CreatePsas < ActiveRecord::Migration
  def change
    create_table :psas do |t|
      t.string :fedexPSAName
      t.integer :fedexPSANumber
      t.string :contractorPSAName
      t.integer :contractorPSANumber
      t.boolean :activeBoolean
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
