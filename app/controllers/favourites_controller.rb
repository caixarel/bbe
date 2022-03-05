class FavouritesController < ApplicationController
  def index
    @bakeries = current_user.favourites.map{|fav| fav.bakery}
  end
end
