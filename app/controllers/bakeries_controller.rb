class BakeriesController < ApplicationController

  def index
    if params[:query].present?
      @bakeries = Bakery.search_by_name_and_address(params[:query])
    else
      @bakeries = Bakery.all
    end

    @markers = @bakeries.geocoded.map do |bakery|
      {
        lat: bakery.latitude,
        lng: bakery.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bakery: bakery })
      }
    end
  end
end
