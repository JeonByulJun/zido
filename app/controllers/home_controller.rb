class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @findmemo = Spot.all
    @memos = Spot.where(user_id: current_user.id)
  end
end