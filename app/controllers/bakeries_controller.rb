class BakeriesController < ApplicationController

  def index
    @pictures = ['https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fcdn.radiofrance.fr%2Fs3%2Fcruiser-production%2F2021%2F01%2F8ff85d76-021c-418a-8fde-48b204c6526b%2F1200x680_pains.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fimg.huffingtonpost.com%2Fasset%2F5c932c2b36000027256dc51a.jpeg%3Fops%3D1778_1000','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.petitscommerces.fr%2Fwp-content%2Fuploads%2Flisting-uploads%2Fgallery%2F2020%2F09%2FAtelier-du-pain.Boulangerie-p%25C3%25A2tisserie.-Epinay-sur-seine.pain_-scaled.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F57%2F2f%2F81%2F572f8106b9115ddf3692b0491ba2c8db.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F4%2F45%2FStrucla_sweet_bread02.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.maisonbettant.fr%2Fwp-content%2Fuploads%2F2018%2F02%2FIMG_4739-min-2-scaled.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fwww.calais-cotedopale.com%2Fsites%2Fcalais-cotedopale%2Ffiles%2Fstyles%2Fogimage%2Fpublic%2Fboulangerie_chez_dhondt_apres_travaux_-_office_de_tourisme_calais_cote_dopale_2.jpg%3Fitok%3DICCvDTCO','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F11%2F98%2F10%2F02%2Fbolleria-de-manu-jara.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fgoodfood.brussels%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fbody_free%2Fpublic%2Fuser_files%2Fcommerces%2Frenard_bakery_bakkerij_03-17_img_8369-edit_web.jpg%3Fitok%3DPpoytYOT','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F05%2F2e%2F92%2F1b%2Fpaul.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Ftableplacechairs.com%2Fwp-content%2Fuploads%2F2021%2F08%2FGAILS-BAKERY-TWICKENHAM-LONDON-for-web-7.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fmedia.cntraveler.com%2Fphotos%2F5de6a84f45a09000087e425e%2F1%3A1%2Fw_320%252Cc_limit%2FLa-Pa%2525CC%252582tisserie-Cyril-Lignac_2019_LaPatisserie_Chaillot2_CyrilLignac(c)CharlotteLindet.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fmedia-exp1.licdn.com%2Fdms%2Fimage%2FC511BAQEQyNIDOFug3w%2Fcompany-background_10000%2F0%2F1519801426291%3Fe%3D2147483647%26v%3Dbeta%26t%3D82QOknaGVP6fqt75L8v6GuhOYxCD0lrPY0bt14D4ZNY','https://slack-imgs.com/?c=1&o1=ro&url=http%3A%2F%2Flafromageriearlesienne.com%2Fwp-content%2Fuploads%2F2019%2F11%2Fblog-post-6.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fres.cloudinary.com%2Ftf-lab%2Fimage%2Fupload%2Fw_600%2Ch_337%2Cc_fill%2Cg_auto%3Asubject%2Cq_auto%2Cf_auto%2Frestaurant%2F83653502-099e-4508-beb2-5617d5263d0e%2F5bb815ec-5a72-419a-b824-82797d09e9c0.jpg','https://www.sortiraparis.com/images/80/93419/629767-leonie-bakery-boulangerie-de-quartier-aux-batignolles.jpg','https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1568254183919-78a4f43a2877%3Fixlib%3Drb-1.2.1%26ixid%3DMnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFrZXJ5fGVufDB8fDB8fA%253D%253D%26w%3D1000%26q%3D80',"https://media-cdn.tripadvisor.com/media/photo-s/11/69/f9/a4/renard-bakery.jpg", "https://images.unsplash.com/photo-1568254183919-78a4f43a2877?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFrZXJ5fGVufDB8fDB8fA%3D%3D&w=1000&q=80"]
    if params[:button].present?
      @page = params[:button]
    else
      @page = '1'
    end
    if params[:query].present?
      @query = params[:query]
      bakeries_by_name = Bakery.search_by_name(params[:query])
      bakeries_near = Bakery.near(params[:query], 20)
      if bakeries_by_name.empty?
        @bakeries = bakeries_near
      else
        @bakeries = bakeries_by_name
      end
    else
      @bakeries = Bakery.all
      @bakeries_count = @bakeries.length
      @query = ''
    end
    unless @bakeries.empty?
      @markers = @bakeries.geocoded.map do |bakery|
        {
          lat: bakery.latitude,
          lng: bakery.longitude,
          image_url: helpers.asset_url('baguette2.png'),
          info_window: render_to_string(partial: "info_window", locals: { bakery: bakery })
        }
      end
    end

    @bakeries = @bakeries[((@page.to_i-1)*5)..((@page.to_i * 5) - 1)].sort_by {|bakery| bakery.id}
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
    @tag = Tag.new
    @visitors = Review.where(bakery: @bakery).where(visitor: true)
    @locals = Review.where(bakery: @bakery).where(visitor: false)
    sum = 0
    @markers = [
      {
        lat: @bakery.latitude,
        lng: @bakery.longitude,
        image_url: helpers.asset_url('baguette2.png'),
        info_window: render_to_string(partial: "info_window", locals: { bakery: @bakery })
      }
    ]


        @products = Product.where(bakery: @bakery).where(speciality: false)
        @speciality = Product.where(bakery: @bakery).where(speciality: true)
      # @bakeries = Bakery.all.select {|bakery| bakery.rank != nil }
      # @ranked_bakeries = @bakeries.sort_by {|bakery| bakery.rank}.reverse
      # @position = @ranked_bakeries.index{|x| x.id == @bakery.id}
      # @bakery.rank = @position
      # @bakery.save!

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
