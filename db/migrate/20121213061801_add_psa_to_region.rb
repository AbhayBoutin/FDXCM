class AddPsaToRegion < ActiveRecord::Migration
  def change
		change_table :psas do |t|
			t.references :regions
		end
  end
end
