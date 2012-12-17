class AddDetailsToEmployeePays < ActiveRecord::Migration
  def change
    add_column :employee_pays, :pay_id, :integer
  end
end
