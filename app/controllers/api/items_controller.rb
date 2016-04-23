class API::ItemsController < ApplicationController
  respond_to :json
  
  def create
    item = Item.new(item_params)
    if item.save
      render json: item, status: 201, location: [:api, item]
    else
      render json: {errors: item.errors }, status: 422
    end
  end

  private

  def item_params
    params.permit(:name, :quantity, :list_type, :user_id, :event_id)
  end

  

end

