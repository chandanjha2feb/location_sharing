class TripsController < ApplicationController
  def index
  	@user = current_user
  	@trips = Trip.where(:user_id => current_user.id)
  end

  # function for creating a new trip
  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.checkins.build(lat: params[:lat], lng: params[:lng])
    render json: @trip.as_json if @trip.save
  end

  # function for showing a trip
  def show
    @trip = Trip.find_by(uuid: params[:id])
  end

  private
    def trip_params
      params.permit(:name, :user_id)
    end
end
