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
        image_url: helpers.asset_url('baguette2.png'),
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
    @review = Review.new
  end

  def new
    @bakery = Bakery.new
  end

  def create
    @bakery = Bakery.new(bakery_params)
    @bakery.user = current_user
    if @bakery.save
      redirect_to bakeries_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bakery.user == current_user
      if @bakery.update(bakery_params)
        redirect_to bakery_path(@bakery)
      else
        render :edit
      end
    end
  end

  def destroy
    if @bakery.user == current_user
      @bakery.destroy
      redirect_to bakeries_path
    end
  end



  private

  def set_bakery
    @bakery = Bakery.find(params[:id])
  end

  def bakery_params
    params.require(:bakery).permit(:name, :address, :description, :phone_number, :post_code, :opening_hour, :closing_hour, pictures: [])
  end

end
