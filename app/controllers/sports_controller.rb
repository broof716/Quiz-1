class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    Sport.create(sport_params)
    redirect_to root_path
  end

  private

  def sport_params
    params.require(:sport).permit(:name, :description)
  end

end