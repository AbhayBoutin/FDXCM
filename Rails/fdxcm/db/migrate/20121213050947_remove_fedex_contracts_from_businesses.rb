class RemoveFedexContractsFromBusinesses < ActiveRecord::Migration
  def change
		remove_column :businesses, :fedexContract_id
  end
end