class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :bakery

  def index
    @favourites = Favourite.all
  end

  def create
    @bakery = Bakery.find(params[:bakery_id])
    @favourite = Favourite.create(favourite_params)
  end

  def destroy
    @bakery = Bakery.find(params[:bakery_id])
    @favourite = Favourite.find_by(favourite_params)
    @favourite.destroy
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :bakery_id)
  end
end
