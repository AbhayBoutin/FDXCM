class RenameBusinessesToBusinessInPsa < ActiveRecord::Migration
  def up
    remove_column :psas, :businesses_id
    add_column :psas, :business_id, :integer
  end

  def down
    add_column :psas, :businesses_id, :integer
    remove_column :psas, :business_id
  end
end