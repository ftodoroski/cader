class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.integer :property_id
      t.boolean :occupied, default: false
      t.string :move_in_date

      t.timestamps
    end
  end
end
