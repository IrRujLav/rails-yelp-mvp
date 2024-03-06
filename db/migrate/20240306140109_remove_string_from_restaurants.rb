class RemoveStringFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :string, :string
  end
end
