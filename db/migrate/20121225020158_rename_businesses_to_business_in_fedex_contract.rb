class RenameBusinessesToBusinessInFedexContract < ActiveRecord::Migration
  def up
    remove_column :fedex_contracts, :businesses_id
    add_column :fedex_contracts, :business_id, :integer
  end

  def down
    add_column :fedex_contracts, :businesses_id, :integer
    remove_column :fedex_contracts, :business_id
  end
end