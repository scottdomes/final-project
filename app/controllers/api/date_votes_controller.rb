class API::DateVotesController < ApplicationController
  respond_to :json

  def index
    respond_with DateVote.all
  end

  def show
    respond_with DateVote.find(params[:id])
  end

  def create
    if DateVote.find_by(user_id: params['user_id']) != nil 
      destroy_vote(params['user_id'])
    end 
    properties = {user_id: params['user_id'], event_date_id: params['id']}
    date_vote = DateVote.new(properties)
    if date_vote.save
      render json: date_vote, status: 201, location: [:api, date_vote]
    else
      render json: { errors: date_vote.errors }, status: 422
    end
  end

  def destroy_vote (user_id)
    date_vote = DateVote.find_by(user_id: user_id)
    date_vote.destroy
  end

  def update
    date_vote = DateVote.find(params[:id])

    if date_vote.update(DateVote_params)
      render json: date_vote, status: 200, location: [:api, date_vote]
    else
      render json: { errors: date_vote.errors }, status: 422
    end
  end

  def destroy
    date_vote = DateVote.find_by(user_id: params[:user_id])
    if date_vote.destroy
      render json: date_vote, status: 200, location: [:api, date_vote]
    end
  end

  private

    def date_vote_params
      params.permit(:user_id, :event_date_id)
    end

end
