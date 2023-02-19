# test/controllers/api/v1/spots_controller_test.rb
require 'test_helper'

class Api::V1::SpotsControllerTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers
  setup do
    @spot_one = spots(:spot_one)
    @spot_two = spots(:spot_two)
  end

  test "should get list of spots" do
    get api_v1_spots_url
    assert_response :success
    assert_equal Spot.order(price: :asc).to_json, @response.body
  end

  test "should show spot" do
    get api_v1_spot_url(@spot_one)
    assert_response :success
    assert_equal @spot_one.to_json(include: :reviews), @response.body
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post api_v1_spots_url, params: { spot: { title: 'New Spot', description: 'New Description', price: 30.0 } }
    end
    assert_response :created
  end

  test "should update spot" do
    patch api_v1_spot_url(@spot_one), params: { spot: { title: 'Updated Spot', description: 'Updated Description', price: 40.0 } }
    assert_response :success
    assert_equal 'Updated Spot', @spot_one.reload.title
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete api_v1_spot_url(@spot_one)
    end
    assert_response :no_content
  end
end
