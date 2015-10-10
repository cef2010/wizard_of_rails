class RemoveTypeColumn < ActiveRecord::Migration
  def self.up
    remove_column :vendors, :type
  end


end
