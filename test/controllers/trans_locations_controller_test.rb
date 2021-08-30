require "test_helper"

class TransLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trans_location = trans_locations(:one)
  end

  test "should get index" do
    get trans_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_trans_location_url
    assert_response :success
  end

  test "should create trans_location" do
    assert_difference('TransLocation.count') do
      post trans_locations_url, params: { trans_location: { location_id: @trans_location.location_id, transportation_id: @trans_location.transportation_id } }
    end

    assert_redirected_to trans_location_url(TransLocation.last)
  end

  test "should show trans_location" do
    get trans_location_url(@trans_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_trans_location_url(@trans_location)
    assert_response :success
  end

  test "should update trans_location" do
    patch trans_location_url(@trans_location), params: { trans_location: { location_id: @trans_location.location_id, transportation_id: @trans_location.transportation_id } }
    assert_redirected_to trans_location_url(@trans_location)
  end

  test "should destroy trans_location" do
    assert_difference('TransLocation.count', -1) do
      delete trans_location_url(@trans_location)
    end

    assert_redirected_to trans_locations_url
  end
end
