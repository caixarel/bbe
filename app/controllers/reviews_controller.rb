class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end
  def create
    @bakery = Bakery.find(params[:bakery_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.bakery = @bakery
    if @review.save
      respond_to do |format|
      format.html { redirect_to bakery_path(@bakery) }
      format.text { render partial: 'reviews/reviews', locals: { review: @review }, formats: [:html] }
      end
    end
  end
  private

def review_params
  params.require(:review).permit(:content, :title,:visitor,:rating,:photo)
end
end
