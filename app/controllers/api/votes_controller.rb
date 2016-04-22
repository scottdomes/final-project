class API::VotesController < ApplicationController
  respond_to :json

  def index
    respond_with Vote.all
  end

  def show
    respond_with Vote.find(params[:id])
  end

  def create
    vote = Vote.new(vote_params)
    if vote.save
      render json: vote, status: 201, location: [:api, vote]
    else
      render json: { errors: vote.errors }, status: 422
    end
  end

  def update
    vote = Vote.find(params[:id])

    if vote.update(Vote_params)
      render json: vote, status: 200, location: [:api, vote]
    else
      render json: { errors: vote.errors }, status: 422
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.destroy
    head 204
  end

  private

    def vote_params
      params.permit(:user_id)
    end

end
