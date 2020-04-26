class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.bigint :phone_number

      t.timestamps
    end
  end
end
