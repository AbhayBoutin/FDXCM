class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :fedexTerminalName
      t.integer :fedexTerminalNumber
      t.string :contractorTerminalName
      t.integer :contractorTerminalNumber
      t.boolean :colocationBoolean

      t.timestamps
    end
  end
end
