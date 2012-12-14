class AddTerminalsToRegions < ActiveRecord::Migration
  def change
		change_table :terminals do |t|
			t.references :regions
		end
  end
end
