class CreateGemDemos < ActiveRecord::Migration
  def change
    create_table :gem_demos do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
