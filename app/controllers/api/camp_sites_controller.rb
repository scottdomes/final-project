class API::CampSitesController < ApplicationController
  respond_to :json

  def index
    if (params[:event_id])
      respond_with CampSite.where(event_id:params[:event_id])
    else
      respond_with CampSite.all
    end
  end

  def show
    respond_with CampSite.find(params[:id])
  end

  def create
    campsite = CampSite.new(campsite_params)
    if campsite.save
      render json: campsite, status: 201, location: [:api, campsite]
    else
      render json: { errors: campsite.errors }, status: 422
    end
  end

  def update
    campsite = CampSite.find(params[:id])

    if campsite.update(campsite_params)
      render json: campsite, status: 200, location: [:api, campsite]
    else
      render json: { errors: campsite.errors }, status: 422
    end
  end

  def destroy
    campsite = CampSite.find(params[:id])
    campsite.destroy
    head 204
  end

  private

    def campsite_params
      params.permit(:name, :event_id)
    end

end
