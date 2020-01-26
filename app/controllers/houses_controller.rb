class HousesController < ApplicationController

  def new
  end

  def create
    @house = House.create(house_params)
    if @house.save!
      redirect_to @house
    else
      render 'new'
    end
  end

  def index
    @houses = House.geocoded
    @markers = @houses.map do |house|
      {
        lat: house.latitude,
        lng: house.longitude,
      }
    end
  end

  def show
    @house = House.find(params[:id])
    @children = Child.where(house_id: @house)
  end

  private

    def house_params
      params.require(:house).permit(:address, :city, :chimney)
    end

end
