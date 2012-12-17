class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.decimal :amount
      t.datetime :datetime

      t.timestamps
    end
  end
end
