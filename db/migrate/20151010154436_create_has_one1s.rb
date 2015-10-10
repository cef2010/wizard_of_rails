class CreateHasOne1s < ActiveRecord::Migration
  def change
    create_table :has_one1s do |t|
      t.string :name
      t.text :hacker
      t.string :address
      
      t.timestamps null: false
    end
  end
end
