class AddFunctionToVendors < ActiveRecord::Migration
  def change
    add_column :vendors, :function, :string
  end
end
