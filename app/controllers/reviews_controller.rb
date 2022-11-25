class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @service = Service.find(params[:service_id])
    @user = current_user
    @review.service = @service
    if @review.save
      redirect_to service_path(@service)
    else
      render 'services/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to service_path(@review.service)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
