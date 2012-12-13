class AddFedexContractsToAddendums < ActiveRecord::Migration
	change_table :addendums do |t|
		t.references :fedexContract
	end
end
