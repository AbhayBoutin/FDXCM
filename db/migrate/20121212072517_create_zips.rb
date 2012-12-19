class CreateZips < ActiveRecord::Migration
  def change
    create_table :zips do |t|
      t.string :zip

      t.timestamps
    end
  end
end
