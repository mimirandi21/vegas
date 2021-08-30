require "test_helper"

class DestSpecialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_special = dest_specials(:one)
  end

  test "should get index" do
    get dest_specials_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_special_url
    assert_response :success
  end

  test "should create dest_special" do
    assert_difference('DestSpecial.count') do
      post dest_specials_url, params: { dest_special: { destination_id: @dest_special.destination_id, special_id: @dest_special.special_id } }
    end

    assert_redirected_to dest_special_url(DestSpecial.last)
  end

  test "should show dest_special" do
    get dest_special_url(@dest_special)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_special_url(@dest_special)
    assert_response :success
  end

  test "should update dest_special" do
    patch dest_special_url(@dest_special), params: { dest_special: { destination_id: @dest_special.destination_id, special_id: @dest_special.special_id } }
    assert_redirected_to dest_special_url(@dest_special)
  end

  test "should destroy dest_special" do
    assert_difference('DestSpecial.count', -1) do
      delete dest_special_url(@dest_special)
    end

    assert_redirected_to dest_specials_url
  end
end
