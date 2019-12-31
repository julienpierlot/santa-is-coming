class ListsController < ApplicationController

  def new
  end

  def create
    @child = Child.find(params.dig("child_id"))
    @list = List.create(child_id: @child)
    @gift_info = GiftInfo.find_or_create_by(name: params.dig("gift_infos", "name"))
    @list.add_gift!(@gift_info, @child)
    if @list.gifts.any?
      redirect_to child_list_path(@child, @list)
    else
      render 'new'
    end
  end

  def show
    @list = List.find(params["id"])
    @child = Child.find(params["child_id"])
  end

  def update
    @list = List.find(params["id"])
    @child = Child.find(params["child_id"])
  end


  private

    def list_params(params)
      #TODO
    end

end
