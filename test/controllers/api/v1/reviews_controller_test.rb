require 'test_helper'

class Api::V1::ReviewsControllerTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  def setup
    @spot = spots(:spot_one)
    @review = reviews(:review_one)
  end

  test "should get all reviews for the given spot" do
    get api_v1_spot_reviews_path(spot_id: @spot.id)
    assert_response :success
    assert_equal [JSON.parse(@review.to_json)], JSON.parse(response.body)
  end


  test "should create review" do
    assert_difference('Review.count') do
      post api_v1_spot_reviews_url(@spot), params: { review: { content: @review.content, rating: @review.rating } }
    end

    assert_response :success
  end

  test "should not create review with invalid params" do
    assert_no_difference('Review.count') do
      post api_v1_spot_reviews_url(@spot), params: { review: { content: '', rating: '' } }
    end

    assert_response :unprocessable_entity
  end

  test "should show review" do
    get api_v1_spot_review_url(@spot, @review)
    assert_response :success
  end


  test "should update review" do
    patch api_v1_spot_review_url(@spot, @review), params: { review: { content: @review.content, rating: @review.rating } }
    assert_response :success
  end


  test "should not update review with invalid params" do
    patch api_v1_spot_review_url(@spot, @review), params: { review: { content: '', rating: '' } }
    assert_response :unprocessable_entity
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete api_v1_spot_review_url(@spot, @review)
    end

    assert_response :success
  end

  test "should delete an existing review for the given spot" do
    assert_difference('Review.count', -1) do
      delete api_v1_spot_review_path(spot_id: @spot.id, id: @review.id)
    end

    assert_response :no_content
  end

end
