class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.belongs_to :userhm

      t.timestamps null: false
    end
  end
end
