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
    gifts_from_list = list_params[:gift_infos_attributes].values
    @child.create_list!(gifts_from_list)
    if @child.list
      redirect_to child_list_path(@child, @list)
      ListWorker.perform_async(@child)
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
