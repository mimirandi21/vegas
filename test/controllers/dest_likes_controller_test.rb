require "test_helper"

class DestLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_like = dest_likes(:one)
  end

  test "should get index" do
    get dest_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_like_url
    assert_response :success
  end

  test "should create dest_like" do
    assert_difference('DestLike.count') do
      post dest_likes_url, params: { dest_like: { destination_id: @dest_like.destination_id, like_id: @dest_like.like_id } }
    end

    assert_redirected_to dest_like_url(DestLike.last)
  end

  test "should show dest_like" do
    get dest_like_url(@dest_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_like_url(@dest_like)
    assert_response :success
  end

  test "should update dest_like" do
    patch dest_like_url(@dest_like), params: { dest_like: { destination_id: @dest_like.destination_id, like_id: @dest_like.like_id } }
    assert_redirected_to dest_like_url(@dest_like)
  end

  test "should destroy dest_like" do
    assert_difference('DestLike.count', -1) do
      delete dest_like_url(@dest_like)
    end

    assert_redirected_to dest_likes_url
  end
end
