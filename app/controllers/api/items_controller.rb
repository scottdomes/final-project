class API::ItemsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Item.all
  end

  def show
    publicItems = Item.where(event_id: params[:id]).where(list_type: 'public').order(:created_at)
    privateItems = Item.where(event_id: params[:id]).where(list_type: 'private').order(:created_at)
    render json: {
      :publicPackingList => publicItems,
      :privatePackingList => privateItems
    }
    # items = Item.where(event_id: params[:id]).order(:id)
    # respond_with items
  end

  def create
    item = Item.new(item_params)
    if item.save
      render json: item, status: 201, location: [:api, item]
    else
      render json: {errors: item.errors }, status: 422
    end
  end

  # PUT    /api/items/:id(.:format)
  def update
    item = Item.find(params[:id])

    if item.update(item_params)
      render json: item, status: 200, location: [:api, item]
    else
      render json: { errors: item.errors }, status: 422
    end
  end

  private

  def item_params
    params.permit(:label, :quantity, :list_type, :event_id, :user_id)
  end

  

end

