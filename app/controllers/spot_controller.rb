class SpotController < ApplicationController
    def create
        Spot.create(title: params[:tit], content: params[:con], shigan: params[:time], user_id: current_user.id, lat: params[:latitude], lng: params[:longitude], button: params[:btntype])
        redirect_to :root
    end
    def delete
        a=Spot.find(params[:id])
        a.destroy
        redirect_to :root
    end
    def edit
        @temp=Spot.find(params[:id])
        
    end
    def update
        pp = Spot.find(params[:id])
        pp.title = params[:tit]
        pp.content = params[:con]
        pp.lat = params[:latitude]
        pp.lng = params[:longitude]
        pp.save
        redirect_to :root
    end
end
