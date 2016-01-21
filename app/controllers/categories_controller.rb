class CategoriesController < ApplicationController

  def index
    @categories = Category.order('description ASC')
  end

  def show
    @category = Category.find(params[:id])
    @events = Event.where(category_id: @category.id)
  end

end
