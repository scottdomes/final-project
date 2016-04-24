class API::UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all
  end

  def show
    respond_with User.find(params[:id])
  end

  def create
    matching_user = User.find_by(fb_id: params[:fb_id])
    if matching_user
      user_info = {
        user: matching_user,
        events: Event.where(user_id: matching_user.id)
      }
      render json: user_info, status: 201, location: [:api, matching_user]
    else
      user = User.new(user_params)
      if user.save
        render json: user, status: 201, location: [:api, user]
      else
        render json: { errors: user.errors }, status: 422
      end
    end
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: user, status: 200, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    head 204
  end

  private

    def user_params
      params.permit(:fb_id)
    end

end
