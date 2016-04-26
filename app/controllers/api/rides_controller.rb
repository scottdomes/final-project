class API::RidesController < ApplicationController
  respond_to :json

  def index
    if (params[:car_id])
      respond_with Ride.where(car_id:params[:car_id])
    else
      respond_with Ride.all
    end
  end

  def show
    respond_with Ride.find(params[:id])
  end

  def create
    ride = Ride.new(ride_params)
    if ride.save
      render json: ride, status: 201, location: [:api, ride]
    else
      render json: { errors: ride.errors }, status: 422
    end
  end

  def update
    ride = Ride.find(params[:id])

    if ride.update(ride_params)
      render json: ride, status: 200, location: [:api, ride]
    else
      render json: { errors: ride.errors }, status: 422
    end
  end

  def destroy
    ride = Ride.find(params[:id])
    ride.destroy
    head 204
  end

  private

    def ride_params
      params.permit(:user_id, :car_id)
    end

end
