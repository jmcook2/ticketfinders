class CategoriesController < ApplicationController

  layout "admin"

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category successfully created"
      redirect_to @category
    else
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      flash[:notice] = "Category successfully updated"
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Category successfully deleted"
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:description)
  end

end
