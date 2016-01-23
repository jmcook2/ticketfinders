class CategoriesController < ApplicationController

  def index
    @categories = Category.order('description ASC')
  end

  def show
    @category = Category.find(params[:id])
    @players = Player.where(category_id: @category.id)
    @competitions = Competition.where(category_id: @category.id)
  end

end
