class SpotController < ApplicationController
    def create
        Spot.create(title: params[:tit], content: params[:con])
    end
end
