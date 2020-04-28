class AddFloorsToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :floors, :integer
  end
end
