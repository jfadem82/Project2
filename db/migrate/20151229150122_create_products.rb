class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :country_of_origin
      t.float :quantity
      t.float :price

      t.timestamps null: false
    end
  end
end
