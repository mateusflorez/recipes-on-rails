class AddFieldsToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :kind, :string
    add_column :recipes, :portion, :string
    add_column :recipes, :preptime, :datetime
    add_column :recipes, :poster, :string
  end
end
