class StatsController < ApplicationController
	respond_to :html, :json

  def index
  	@stats = Stat.all
	  respond_with @stats
  end

  def show
  end

  def update
    @stat = Stat.find(params[:id])
    @stat.update_attributes(params[:stat])
    respond_with @stat
  end

  def create
    @stat = Stat.new(params[:stat])
    @stat.save
    respond_with @stat
  end

  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    respond_with @stat
  end
end
