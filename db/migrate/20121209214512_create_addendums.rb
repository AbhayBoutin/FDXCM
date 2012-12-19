class CreateAddendums < ActiveRecord::Migration
  def change
    create_table :addendums do |t|
      t.string :fedexAddendumName
      t.integer :fedexAddendumNumber
      t.string :fedexContractorAddendumName
      t.integer :fedexContractorAddendumNumber
      t.text :content
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
