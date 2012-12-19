class AddDetailsToPayProfiles < ActiveRecord::Migration
  def change
    add_column :pay_profiles, :flatPay_id, :integer
    add_column :pay_profiles, :productionPay_id, :integer

    add_index :pay_profiles, :flatPay_id
    add_index :pay_profiles, :productionPay_id
  end
end
