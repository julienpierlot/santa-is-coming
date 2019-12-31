class ChildrenController < ApplicationController

  def new
    puts 'those are the params incoming #{params}'
    @house = House.find(params[:house_id])
  end

  def create
    @child = Child.new(child_params)
    @child.save!
    if @child.save
      @house = House.find(params["house_id"])
      redirect_to house_path(@house)
    else
      render "new"
    end
  end


  def show
    @child = Child.find(params["id"])
  end

  def index
    @house = House.find(params["house_id"])
    @children = Child.where(house_id: @house.id)
  end

  private

    def child_params
      params["child"]["house_id"] = params["house_id"]
      params.require(:child).permit(:name, :age, :behavior, :house_id)
    end
end
