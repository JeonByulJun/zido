class SpotController < ApplicationController
    def create
        Spot.create(title: params[:tit], content: params[:con], shigan: params[:time], user_id: current_user.id, lat: params[:latitude], lng: params[:longitude])
        redirect_to :root
    end
end
