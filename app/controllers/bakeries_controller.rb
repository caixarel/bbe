class BakeriesController < ApplicationController

  def index
    @bakeries = Bakery.all
    @markers = @bakeries.geocoded.map do |bakery|
      {
        lat: bakery.latitude,
        lng: bakery.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bakery: bakery })
      }
    end
  end
end
