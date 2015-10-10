class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.belongs_to :couple
      t.belongs_to :vendor
      t.timestamps null: false
    end
  end
end
