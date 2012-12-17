class CreateFlatPays < ActiveRecord::Migration
  def change
    create_table :flat_pays do |t|
      t.decimal :payAmount
      t.datetime :startDate
      t.datetime :endTime
      t.boolean :activeBoolean
      t.belongs_to :frequency

      t.timestamps
    end
    add_index :flat_pays, :frequency_id
  end
end
