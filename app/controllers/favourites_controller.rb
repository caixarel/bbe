class FavouritesController < ApplicationController
  def index
    @bakeries = current_user.favourites.map{|fav| fav.bakery}
    test = Bakery.where(id: @bakeries.pluck(:id))
    @markers = test.geocoded.map do |bakery|
      {
        lat: bakery.latitude,
        lng: bakery.longitude,
        image_url: helpers.asset_url('baguette2.png'),
        info_window: render_to_string(partial: "../views//bakeries/info_window", locals: { bakery: bakery })
      }
    end

  end
end
