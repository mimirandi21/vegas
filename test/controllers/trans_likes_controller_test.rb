require "test_helper"

class TransLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trans_like = trans_likes(:one)
  end

  test "should get index" do
    get trans_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_trans_like_url
    assert_response :success
  end

  test "should create trans_like" do
    assert_difference('TransLike.count') do
      post trans_likes_url, params: { trans_like: { like_id: @trans_like.like_id, transportation_id: @trans_like.transportation_id } }
    end

    assert_redirected_to trans_like_url(TransLike.last)
  end

  test "should show trans_like" do
    get trans_like_url(@trans_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_trans_like_url(@trans_like)
    assert_response :success
  end

  test "should update trans_like" do
    patch trans_like_url(@trans_like), params: { trans_like: { like_id: @trans_like.like_id, transportation_id: @trans_like.transportation_id } }
    assert_redirected_to trans_like_url(@trans_like)
  end

  test "should destroy trans_like" do
    assert_difference('TransLike.count', -1) do
      delete trans_like_url(@trans_like)
    end

    assert_redirected_to trans_likes_url
  end
end
