class AddCuisineReferencesToRecipe < ActiveRecord::Migration[7.1]
  def change
    add_reference :recipes, :cuisine, null: true, foreign_key: true
  end
end
