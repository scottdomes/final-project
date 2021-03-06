class API::EventsController < ApplicationController
  respond_to :json

  def index
    if (params[:user_id])
      respond_with Event.where(user_id:params[:user_id])
    else
      respond_with Event.all
    end

  end

  def show
    event = Event.find(params[:id])
    dates = event.event_dates.map { |date| {dateRange: date, votes: date.date_votes} }
    campsites = event.camp_sites.map { |campsite| {campsite: campsite, votes: campsite.campsite_votes} }
    creator = event.user
    cars = event.cars
    date_votes = event.date_votes
    campsite_votes = event.campsite_votes
    users = [event.users, creator].flatten
    usersHash = Hash[users.map { |k, v| [k.id, k] }] #removes users after when api cleaned up and use usershash
    cars = event.cars.map { |car| {car: car, rides: car.rides} }
    render json: {
      :details => event, 
      :dates => dates, 
      :campsites => campsites,
      :users => users,
      :usersHash => usersHash,
      :creator => creator,
      :cars => cars,
      :date_votes => date_votes,
      :campsite_votes => campsite_votes
    }
  end

  def create

    dates = params[:dateRange]
    
    # params.delete("dateRange")

    event = Event.new(event_params)

    if event.save
      e = EventDate.new(start_date: dates['start_date'], end_date: dates['end_date'], user_id: params['user_id'], event_id: Event.last.id)
      campsite = CampSite.new(user_id: params['user_id'], name: params['campsite_name'], event_id: Event.last.id)
      if campsite.save && e.save
        event.final_location_id = campsite.id
        event.final_date_id = e.id
        event.save
        render json: event, status: 201, location: [:api, event]
        # render json: e, status: 201, location: [:api, e]
      else
        render json: { errors: event.errors }, status: 422
      end
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def update
    event = Event.find(params[:id])

    if event.update(event_params)
      render json: event, status: 200, location: [:api, event]
    else
      render json: { errors: event.errors }, status: 422
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    head 204
  end

  private

    def event_params
      params.permit(
        :id,
        :name, 
        :vote_on_location, 
        :vote_on_date, 
        :user_id,
        :final_location_id,
        :final_date_id,
        :voting_phase
      )
    end


end
