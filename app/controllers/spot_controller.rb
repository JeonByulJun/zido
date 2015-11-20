class SpotController < ApplicationController
    def create
        a = params[:tit].gsub "\n", " "
        b = a.gsub "\r", " "
        c = params[:con].gsub "\n", " "
        d = c.gsub "\r", " "        
        Spot.create(title: b, content: d, shigan: params[:time], user_id: current_user.id, lat: params[:latitude], lng: params[:longitude], button: params[:btntype], my_image: params[:image_file])
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
        a = params[:tit].gsub "\n", " "
        b = a.gsub "\r", " "
        c = params[:con].gsub "\n", " "
        d = c.gsub "\r", " "   
        pp = Spot.find(params[:id])
        pp.title = b
        pp.content = d
        pp.lat = params[:latitude]
        pp.lng = params[:longitude]
        pp.save
        redirect_to :root
    end
end
