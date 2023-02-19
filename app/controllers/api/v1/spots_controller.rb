# app/controllers/api/v1/spots_controller.rb
class Api::V1::SpotsController < ApplicationController
  before_action :set_spot, only: [:show, :update, :destroy]

  def index
    @spots = Spot.order(price: :asc)
    render json: @spots
  end

  def show
    render json: @spot, include: :reviews
  end

  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      render json: @spot, status: :created
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  def update
    if @spot.update(spot_params)
      render json: @spot
    else
      render json: @spot.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @spot.destroy
    head :no_content
  end

  private

  def set_spot
    @spot = Spot.find(params[:id])
  end

  def spot_params
    params.require(:spot).permit(:title, :description, :price)
  end
end
