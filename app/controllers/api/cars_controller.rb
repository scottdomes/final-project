class API::CarsController < ApplicationController
  respond_to :json

  def index
    if (params[:event_id])
      respond_with Car.where(event_id:params[:event_id])
    else
      respond_with Car.all
    end
  end

  def show
    respond_with Car.find(params[:id])
  end

  def create
    car = Car.new(car_params)
    if car.save
      render json: car, status: 201, location: [:api, car]
    else
      render json: { errors: car.errors }, status: 422
    end
  end

  def update
    car = Car.find(params[:id])

    if car.update(car_params)
      render json: car, status: 200, location: [:api, car]
    else
      render json: { errors: car.errors }, status: 422
    end
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    head 204
  end

  private

    def car_params
      params.permit(:user_id, :event_id, :passenger_capacity)
    end

end
