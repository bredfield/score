class PagesController < ApplicationController
  respond_to :html, :json
  def index
  	@collections = Collection.all
  	@stats = Stat.all
  	@user = current_user
  	@response = {
  		collections: @collections,
  		stats: @stats,
  		user: @user
  	}
  	respond_with(@response)
  end

  def about
  end
end
