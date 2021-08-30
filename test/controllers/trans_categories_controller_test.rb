require "test_helper"

class TransCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trans_category = trans_categories(:one)
  end

  test "should get index" do
    get trans_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_trans_category_url
    assert_response :success
  end

  test "should create trans_category" do
    assert_difference('TransCategory.count') do
      post trans_categories_url, params: { trans_category: { category_id: @trans_category.category_id, transportation_id: @trans_category.transportation_id } }
    end

    assert_redirected_to trans_category_url(TransCategory.last)
  end

  test "should show trans_category" do
    get trans_category_url(@trans_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_trans_category_url(@trans_category)
    assert_response :success
  end

  test "should update trans_category" do
    patch trans_category_url(@trans_category), params: { trans_category: { category_id: @trans_category.category_id, transportation_id: @trans_category.transportation_id } }
    assert_redirected_to trans_category_url(@trans_category)
  end

  test "should destroy trans_category" do
    assert_difference('TransCategory.count', -1) do
      delete trans_category_url(@trans_category)
    end

    assert_redirected_to trans_categories_url
  end
end
