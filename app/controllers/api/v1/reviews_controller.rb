class Api::V1::ReviewsController < ApplicationController
  before_action :set_spot
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /spots/:spot_id/reviews
  def index
    @reviews = @spot.reviews
    render json: @reviews
  end

  # GET /spots/:spot_id/reviews/:id
  def show
    render json: @review
  end

  # POST /spots/:spot_id/reviews
  def create
    @review = @spot.reviews.build(review_params)

    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spots/:spot_id/reviews/:id
  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spots/:spot_id/reviews/:id
  def destroy
    @review.destroy
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def set_review
    @review = @spot.reviews.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
