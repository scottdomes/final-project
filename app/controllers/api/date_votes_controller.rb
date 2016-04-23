class API::DateVotesController < ApplicationController
  respond_to :json

  def index
    respond_with DateVote.all
  end

  def show
    respond_with DateVote.find(params[:id])
  end

  def create
    date_vote = DateVote.new(date_vote_params)
    if date_vote.save
      render json: date_vote, status: 201, location: [:api, date_vote]
    else
      render json: { errors: date_vote.errors }, status: 422
    end
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
    date_vote = DateVote.find(params[:id])
    date_vote.destroy
    head 204
  end

  private

    def date_vote_params
      params.permit(:user_id)
    end

end
