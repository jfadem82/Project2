class AddCustomerReferencesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :customer, :string
    add_reference :products, :customer, index: true, foreign_key: true
  end
end
