class AddSupplemntalBooleanToPsa < ActiveRecord::Migration
  def change
    add_column :psas, :supplementalBoolean, :boolean
  end
end
