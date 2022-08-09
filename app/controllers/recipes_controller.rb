class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    recipe_params = params.require(:recipe).permit(:name, :stuff, :calories, :directions, :cost)
    @recipe.update(recipe_params)
    redirect_to @recipe
  end
end
