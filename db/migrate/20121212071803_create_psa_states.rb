class CreatePsaStates < ActiveRecord::Migration
  def change
    create_table :psa_states do |t|
      t.belongs_to :psa
      t.belongs_to :state

      t.timestamps
    end
    add_index :psa_states, :psa_id
    add_index :psa_states, :state_id
  end
end
