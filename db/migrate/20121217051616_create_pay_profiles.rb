class CreatePayProfiles < ActiveRecord::Migration
  def change
    create_table :pay_profiles do |t|
      t.string :profileName
      t.belongs_to :employee

      t.timestamps
    end
    add_index :pay_profiles, :employee_id
  end
end
