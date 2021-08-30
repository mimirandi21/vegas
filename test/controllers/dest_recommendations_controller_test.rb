require "test_helper"

class DestRecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_recommendation = dest_recommendations(:one)
  end

  test "should get index" do
    get dest_recommendations_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_recommendation_url
    assert_response :success
  end

  test "should create dest_recommendation" do
    assert_difference('DestRecommendation.count') do
      post dest_recommendations_url, params: { dest_recommendation: { destination_id: @dest_recommendation.destination_id, recommendation_id: @dest_recommendation.recommendation_id } }
    end

    assert_redirected_to dest_recommendation_url(DestRecommendation.last)
  end

  test "should show dest_recommendation" do
    get dest_recommendation_url(@dest_recommendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_recommendation_url(@dest_recommendation)
    assert_response :success
  end

  test "should update dest_recommendation" do
    patch dest_recommendation_url(@dest_recommendation), params: { dest_recommendation: { destination_id: @dest_recommendation.destination_id, recommendation_id: @dest_recommendation.recommendation_id } }
    assert_redirected_to dest_recommendation_url(@dest_recommendation)
  end

  test "should destroy dest_recommendation" do
    assert_difference('DestRecommendation.count', -1) do
      delete dest_recommendation_url(@dest_recommendation)
    end

    assert_redirected_to dest_recommendations_url
  end
end
