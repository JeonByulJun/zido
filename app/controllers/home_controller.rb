class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    lat=37
    lng=127
    unless params[:latitude]==nil
      lat=params[:latitude]
      lng=params[:longitude]
      
    end
    @lat=lat
    @lng=lng
    @memos = Spot.where(user_id: current_user.id)

  end
  def show
    lat=37
    lng=127
    unless params[:latitude]==nil
      lat=params[:latitude]
      lng=params[:longitude]
      
    end
    @lat=lat
    @lng=lng
    @temp = params[:btntype]
    @marker = Spot.where(button: @temp)
  end
end