class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show]

  def index
    # without active model serializers or json_api
    # locations = Location.all.includes(:recordings)
    # render json: locations
    # unfortunately the above only shows the locations and not its recordings (basically Location.all), hence we need to use active_model_serializers or json:api

    # with active model serializers using json_api adapter
    locations = Location.all
    render json: locations, include: ['recordings']
  end



  def show
    render json: {thislocation: @location, thislocationrecordings: @location.recordings}
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

end