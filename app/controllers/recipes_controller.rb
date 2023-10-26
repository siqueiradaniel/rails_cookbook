class RecipesController < ApplicationController 
  def show 
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(name: params[:recipe][:name], 
                        recipe_type: params[:recipe][:recipe_type],
                        cuisine: params[:recipe][:cuisine],
                        ingredients: params[:recipe][:ingredients],
                        cook_method: params[:recipe][:cook_method],
                        cook_time: params[:recipe][:cook_time])

    if @recipe.save 
      return redirect_to recipe_path(@recipe.id)
    end

    redirect_to :new
  end
end