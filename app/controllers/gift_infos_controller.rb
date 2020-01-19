class GiftInfosController < ApplicationController

  def show
    @gift_info = GiftInfo.find(params[:id])
  end

end
