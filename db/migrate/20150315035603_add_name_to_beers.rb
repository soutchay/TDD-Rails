class AddNameToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :name, :string
  end
end
