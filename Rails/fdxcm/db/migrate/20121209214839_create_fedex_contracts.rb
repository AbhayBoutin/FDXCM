class CreateFedexContracts < ActiveRecord::Migration
  def change
    create_table :fedex_contracts do |t|
      t.string :fedexContractName
      t.integer :fedexContractNumber
      t.string :contractorContractName
      t.integer :contractorContractNumber
      t.text :content
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
