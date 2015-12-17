class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @zoom = 4
    @custom = Custommarker.where(user_id: current_user.id)
    lat=37
    lng=127
    unless params[:latitude]==nil
      lat=params[:latitude]
      lng=params[:longitude]
      @zoom=15
      
    end
    @lat=lat
    @lng=lng
    @memos = Spot.where(user_id: current_user.id).order(shigan: :asc, created_at: :asc)

  end
  def show
    @custom = Custommarker.where(user_id: current_user.id)
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
  def makemarker
    Custommarker.create(user_id: current_user.id, markerimage: params[:image_file], indexname: params[:indexname])
    redirect_to :root
  end
end