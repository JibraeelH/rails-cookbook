class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category.id)
      # redirect to show page for the new category (or index page)
    else
      # re render (refresh) the new page (form)
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def category_params
    # takes the params objects, filters it down and returns it
    params.require(:category).permit(:name)
  end
end
