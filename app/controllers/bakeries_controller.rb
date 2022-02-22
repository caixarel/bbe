class BakeriesController < ApplicationController

  def index
    @bakeries = Bakery.all.order(:id)
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

  def show
    set_bakery
  end

  private

  def set_bakery
    @bakery = Bakery.find(params[:id])
  end

  def bakery_params
    params.require(:bakery).permit(:name, :address, :description, :phone_number, :post_code, :opening_hour, :closing_hour, pictures: [])
  end

end
