class UserFavouritesController < ApplicationController

  def index
    @user_favourites = UserFavourite.all
  end

  def create
    @bakery = Bakery.find(params[:bakery_id])
    @user_favourite = UserFavourite.create(user_favourite_params)
  end

  def destroy
    @bakery = Bakery.find(params[:bakery_id])
    @user_favourite = UserFavourite.find_by(user_favourite_params)
    @user_favourite.destroy
  end

  private

  def user_favourite_params
    params.require(:user_favourite).permit(:user_id, :bakery_id)
  end
end
