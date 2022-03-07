class TagsController < ApplicationController
   skip_before_action :verify_authenticity_token, :only => [:update]

  def new
      @tag = Tag.new
  end
  def create
    @bakery = Bakery.find(params[:bakery_id])
    @tag = Tag.new(tag_params)
    @tag.bakery = @bakery
    @user_tag = UserTag.create(user: current_user, tag: @tag)
    if (@tag.save && @user_tag.save)
      respond_to do |format|
      format.html { redirect_to bakery_path(@bakery) }
      format.text { render partial: 'bakeries/tag', locals: { tag: @tag }, formats: [:html] }
      end
    end
  end

  def update
    @bakery = Bakery.find(params[:bakery_id])
    @tag = Tag.find(params[:id])
    @verify_user_tag = UserTag.where(tag: @tag).where(user: current_user)
    if @verify_user_tag.empty?
      @user_tag = UserTag.new(user: current_user, tag: @tag)
      if @user_tag.save
        respond_to do |format|
          format.html { redirect_to bakery_path(@bakery) }
          format.text { render partial: 'bakeries/tag', locals: { tag: @tag }, formats: [:html] }
        end
      end
    else
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
