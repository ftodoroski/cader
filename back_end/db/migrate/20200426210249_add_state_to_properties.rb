class AddStateToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :state, :string
  end
end
