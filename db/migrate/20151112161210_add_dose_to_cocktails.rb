class AddDoseToCocktails < ActiveRecord::Migration
  def change
    add_column :cocktails, :doses, :string
  end
end
