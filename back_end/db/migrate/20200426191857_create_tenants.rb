class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.bigint :phone_number
      t.integer :apartment_id

      t.timestamps
    end
  end
end
