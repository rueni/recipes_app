class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order('created_at DESC')
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
    redirect_to @recipe
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def delete
    @recipe = Recipe.find(params[:id]).destroy
    redirect_to 'index'
  end


  private
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end



end
