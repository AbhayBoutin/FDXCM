class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state
      t.string :abbreviation
      t.belongs_to :psa

      t.timestamps
    end
    add_index :states, :psa_id
  end
end
