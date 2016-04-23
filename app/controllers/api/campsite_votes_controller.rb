class API::CampsiteVotesController < ApplicationController
  respond_to :json

  def index
    respond_with CampsiteVote.all
  end

  def show
    respond_with CampsiteVote.find(params[:id])
  end

  def create
    campsite_vote = CampsiteVote.new(campsite_vote_params)
    if campsite_vote.save
      render json: campsite_vote, status: 201, location: [:api, campsite_vote]
    else
      render json: { errors: campsite_vote.errors }, status: 422
    end
  end

  def update
    campsite_vote = CampsiteVote.find(params[:id])

    if campsite_vote.update(CampsiteVote_params)
      render json: campsite_vote, status: 200, location: [:api, campsite_vote]
    else
      render json: { errors: campsite_vote.errors }, status: 422
    end
  end

  def destroy
    campsite_vote = CampsiteVote.find(params[:id])
    if campsite_vote.destroy
      render json: campsite_vote, status: 200, location: [:api, campsite_vote]
    end
  end

  private

    def campsite_vote_params
      params.permit(:user_id)
    end

end
