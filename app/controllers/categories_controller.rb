class CategoriesController < ApplicationController
	respond_to :html, :json

  def index
  	@categories = Category.all
	  respond_with(@categories)
  end

  def show
  end

  def edit
  end

  def create
    @category = Category.new(params[:category])
    @category.save
    respond_with @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_with @category
  end


end

