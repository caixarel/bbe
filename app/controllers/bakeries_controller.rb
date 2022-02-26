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

  def update_favourites
    @bakery = Bakery.find(params[:id])
    @favourite = Favourite.where(user: current_user).where(bakery: @bakery)
    if @favourite.empty?
      Favourite.create(user: current_user, bakery: @bakery)
    else
      @favourite.first.destroy
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'favourites.html', locals: { bakery: @bakery} }
    end
  end

  def show
    @bakery = Bakery.find(params[:id])
  end
end
