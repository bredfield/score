class StatsController < ApplicationController
	respond_to :html, :json

  def index
  	@stats = Stat.all
	  respond_with(@stats)
  end

  def show
  end

  def edit
  end

  def new
  end
end
