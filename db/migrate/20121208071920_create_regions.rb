class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :fedexRegionName
      t.integer :fedexRegionNumber
      t.string :fedexRegionPhone
      t.string :contractorRegionName
      t.integer :contractorRegionNumber

      t.timestamps
    end
  end
end
