class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :notable_id
      t.string :notable_type
      t.text :content
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
