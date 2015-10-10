class CreateCouples < ActiveRecord::Migration
  def change
    create_table :couples do |t|
      t.string :name
      t.string :wedding_date

      t.timestamps null: false
    end
  end
end
