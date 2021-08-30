require "test_helper"

class DestLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_location = dest_locations(:one)
  end

  test "should get index" do
    get dest_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_location_url
    assert_response :success
  end

  test "should create dest_location" do
    assert_difference('DestLocation.count') do
      post dest_locations_url, params: { dest_location: { destination_id: @dest_location.destination_id, location_id: @dest_location.location_id } }
    end

    assert_redirected_to dest_location_url(DestLocation.last)
  end

  test "should show dest_location" do
    get dest_location_url(@dest_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_location_url(@dest_location)
    assert_response :success
  end

  test "should update dest_location" do
    patch dest_location_url(@dest_location), params: { dest_location: { destination_id: @dest_location.destination_id, location_id: @dest_location.location_id } }
    assert_redirected_to dest_location_url(@dest_location)
  end

  test "should destroy dest_location" do
    assert_difference('DestLocation.count', -1) do
      delete dest_location_url(@dest_location)
    end

    assert_redirected_to dest_locations_url
  end
end
