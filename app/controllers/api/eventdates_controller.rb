class API::EventDatedatesController < ApplicationController
  respond_to :json

  def index
    if (params[:event_id])
      respond_with EventDate.where(event_id:params[:event_id])
    else
      respond_with EventDate.all
    end

  end

  def show
    respond_with EventDate.find(params[:id])
  end

  def create
    event = EventDate.new(eventdate_params)
    if event.save
      render json: event, status: 201, location: [:api, event]
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def update
    event = EventDate.find(params[:id])

    if event.update(eventdate_params)
      render json: event, status: 200, location: [:api, event]
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def destroy
    event = EventDate.find(params[:id])
    event.destroy
    head 204
  end

  private

    def eventdate_params
      params.permit(:start_date, :end_date, :event_id)
    end

end
