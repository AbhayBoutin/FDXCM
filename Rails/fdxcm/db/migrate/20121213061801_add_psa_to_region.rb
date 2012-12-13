class AddPsaToRegion < ActiveRecord::Migration
  def change
		change_table :regions do |t|
			t.references :psas
		end
  end
end
