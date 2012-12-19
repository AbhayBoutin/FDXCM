class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.references :fedexContract
      t.string :name
      t.string :taxIDNumber
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps
    end
    add_index :businesses, :fedexContract_id
  end
end
