class ListsController < ApplicationController

  def new
    @child = Child.find(params["child_id"])
    @list = List.new
    5.times {@list.gift_infos.build}
    if @child.list.present?
      redirect_to child_list_path
    end
  end

  def create
    @child = Child.find(params["child_id"])
    @child.list = List.new
    byebug
    # @child.create_list!(list_params)
    # @list = List.create(child_id: @child.id)
    # @gift_info = GiftInfo.find_or_create_by(name: params.dig("gift_infos", "name"))
    # @list.add_gift!(@gift_info, @child)
    if @child.list.any?
      redirect_to child_list_path(@child, @list)
    else
      render 'new'
    end
  end

  def show
    @child = Child.find(params["child_id"])
  end

  def update
    @list = List.find(params["id"])
    @child = Child.find(params["child_id"])
  end


  private

    def list_params
      params.require(:list).permit(gift_infos_attributes: [:id, :name])
    end

end
