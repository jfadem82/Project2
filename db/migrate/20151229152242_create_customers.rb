class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :email
      t.string :address_line_1
      t.integer :address_line_two
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :cc_name
      t.integer :cc_number
      t.integer :exp_month
      t.integer :exp_year
      t.integer :cvv

      t.timestamps null: false
    end
  end
end
