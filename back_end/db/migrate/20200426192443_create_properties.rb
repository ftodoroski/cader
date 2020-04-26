class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :owner_id
      t.string :address
      t.string :city
      t.string :country
      t.string :zip_code
      t.string :date_purchased
      t.bigint :purchased_amount
      t.bigint :mortgage_payable
      t.integer :price_per_unit
      t.integer :revenue, default: 0
      t.integer :number_of_units
      t.integer :occupied_units, default: 0
      t.float :cap_rate, default: 0
      t.string :property_type
      t.integer :building_size
      t.integer :year_built

      t.timestamps
    end
  end
end
