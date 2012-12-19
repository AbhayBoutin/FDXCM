class CreatePsazips < ActiveRecord::Migration
  def change
    create_table :psazips do |t|
      t.belongs_to :psa
      t.belongs_to :zip

      t.timestamps
    end
    add_index :psazips, :psa_id
    add_index :psazips, :zip_id
  end
end
