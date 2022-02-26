class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def create
    @bakery = Bakery.find(params[:bakery_id])
    @favourite = Favourite.new
    @favourite.user = current_user
    @favourite.bakery = @bakery
    @favourite.save

    redirect_to bakeries_path(anchor: "bakery-id-#{@bakery.id}")
  end

  def destroy
    # @bakery = Bakery.find(params[:bakery_id])
    @favourite = Favourite.find(params[:id])
    # byebug
    @favourite.destroy
    redirect_to bakeries_path
  end

  private

  def favourite_params
    #params.require(:favourite).permit(:bakery_id)
  end
end
