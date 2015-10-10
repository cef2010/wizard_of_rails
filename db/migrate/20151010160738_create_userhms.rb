class CreateUserhms < ActiveRecord::Migration
  def change
    create_table :userhms do |t|
      t.string :name
      t.string :address
      t.integer :age

      t.timestamps null: false
    end
  end
end
