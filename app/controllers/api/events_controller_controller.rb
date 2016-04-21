et
class API::EventsControllerController < ApplicationController
  respond_to :json

  def show
    respond_with Event.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: event, status: 201, location: [:api, event]
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def update
    event = Event.find(params[:id])

    if event.update(event_params)
      render json: event, status: 200, location: [:api, event]
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    head 204
  end

  private

    def event_params
      params.permit(:id)
    end


end
