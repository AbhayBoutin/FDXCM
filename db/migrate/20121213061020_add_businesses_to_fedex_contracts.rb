class AddBusinessesToFedexContracts < ActiveRecord::Migration
  def change
		change_table :fedex_contracts do |t|
			t.references :businesses
		end
  end
end