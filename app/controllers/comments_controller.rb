class CommentsController < ApplicationController
  before_action :find_comment, only: [:create, :destroy]

  def create
    @comment = @recipe.comments.create(comment_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end

  #####################################################
  private
  def comment_params
    params.require(:comment).permit(:name, :body)
  end

  def find_comment
    @recipe = Recipe.find(params[:recipe_id])
  end



end
