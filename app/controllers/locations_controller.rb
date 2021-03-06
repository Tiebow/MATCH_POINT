class LocationsController < ApplicationController
  def index
    @locations = policy_scope(Location)
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        info_window: render_to_string(partial: "info_window", locals: { location: location }),
        image_url: helpers.asset_url('blue-marker.jpg')
      }
    end
  end

  def show

  end
end
