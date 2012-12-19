class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :contractorBoolean
      t.boolean :activeBoolean
      t.belongs_to :employee

      t.timestamps
    end
    add_index :users, :employee_id
  end
end
