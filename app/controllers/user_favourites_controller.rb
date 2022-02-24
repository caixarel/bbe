class UserFavouritesController < ApplicationController
  def create
    @bakery = Bakery.find(params[:bakery_id])
    @user_favourite = UserFavourite.new(user_favourite_params)
    @user_favourite.bakery = @bakery
    @user_favourite.user = current_user
    if @user_favourite.save
      redirect_to bakery_path(@bakery)
    else
      @user_favourite = UserFavourite.new
      render 'bakery/show'
    end
  end

  private

  def user_favourite_params
    params.require(:user_favourite).permit(:id)
  end
end
