class CreateZips < ActiveRecord::Migration
  def change
    create_table :zips do |t|
      t.string :zip
      t.belongs_to :psa

      t.timestamps
    end
    add_index :zips, :psa_id
  end
end
