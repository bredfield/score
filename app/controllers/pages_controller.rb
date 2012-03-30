class PagesController < ApplicationController
  respond_to :html, :json
  def index
  	@categories = Category.all
  	@stats = Stat.all
  	@user = current_user
  	@response = {
  		categories: @categories,
  		stats: @stats,
  		user: @user
  	}
  	respond_with(@response)
  end

  def about
  end
end
