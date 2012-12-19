class AddPsasToBusinesses < ActiveRecord::Migration
  def change
		change_table :psas do |t|
			t.references :businesses
		end
  end
end
