class CreateAcDemos < ActiveRecord::Migration
  def change
    create_table :ac_demos do |t|
      t.string :title
      t.text :text
      t.string :author

      t.timestamps null: false
    end
  end
end
