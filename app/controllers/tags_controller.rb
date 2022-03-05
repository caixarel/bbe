class TagsController < ApplicationController
   skip_before_action :verify_authenticity_token, :only => [:update]

  def new
      @tag = Tag.new
  end
  def create
    @bakery = Bakery.find(params[:bakery_id])
  @tag = Tag.new(tag_params)
    @tag.bakery = @bakery
    @tag.votes = 1
    if @tag.save
      respond_to do |format|
      format.html { redirect_to bakery_path(@bakery) }
      format.text { render partial: 'bakeries/tag', locals: { tag: @tag }, formats: [:html] }
      end
    end
  end

  def update
    @bakery = Bakery.find(params[:bakery_id])
    @tag = Tag.find(params[:id])

    @tag.votes += 1
    if @tag.save
      respond_to do |format|
      format.html { redirect_to bakery_path(@bakery) }
      format.text { render partial: 'bakeries/tag', locals: { tag: @tag }, formats: [:html] }
      end
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:category)
  end
end
