class AddImageToCocktail < ActiveRecord::Migration
  def change
    add_column :cocktail, :picture, :string
  end
end
