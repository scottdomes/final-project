class API::CampsiteVotesController < ApplicationController
  respond_to :json

  def index
    respond_with CampsiteVote.all
  end

  def show
    respond_with CampsiteVote.find(params[:id])
  end

  def create
    if CampsiteVote.find_by(user_id: params['user_id']) != nil 
      destroy_vote(params['user_id'])
    else 
      properties = {user_id: params['user_id'], camp_site_id: params['id']}
      campsite_vote = CampsiteVote.new(properties)
      if campsite_vote.save
        render json: campsite_vote, status: 201, location: [:api, campsite_vote]
      else
        render json: { errors: campsite_vote.errors }, status: 422
      end
    end
  end

  def destroy_vote (user_id)
    campsite_vote = CampsiteVote.find_by(user_id: user_id)
    if campsite_vote.destroy
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
