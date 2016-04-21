class API::EventsController < ApplicationController
  respond_to :json

  def index
    if (params[:user_id])
      respond_with Event.where(user_id:params[:user_id])
    else
      respond_with Event.all
    end

  end

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
      params.permit(:name, :vote_on_location, :vote_on_date, :user_id)
    end


end
