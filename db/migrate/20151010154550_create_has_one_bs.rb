class CreateHasOneBs < ActiveRecord::Migration
  def change
    create_table :has_one_bs do |t|
      t.string :name
      t.string :company
      t.string :address
      t.belongs_to :has_one1
      t.timestamps null: false
    end
  end
end
