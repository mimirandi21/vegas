require "test_helper"

class DestCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_category = dest_categories(:one)
  end

  test "should get index" do
    get dest_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_category_url
    assert_response :success
  end

  test "should create dest_category" do
    assert_difference('DestCategory.count') do
      post dest_categories_url, params: { dest_category: { category_id: @dest_category.category_id, destination_id: @dest_category.destination_id } }
    end

    assert_redirected_to dest_category_url(DestCategory.last)
  end

  test "should show dest_category" do
    get dest_category_url(@dest_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_category_url(@dest_category)
    assert_response :success
  end

  test "should update dest_category" do
    patch dest_category_url(@dest_category), params: { dest_category: { category_id: @dest_category.category_id, destination_id: @dest_category.destination_id } }
    assert_redirected_to dest_category_url(@dest_category)
  end

  test "should destroy dest_category" do
    assert_difference('DestCategory.count', -1) do
      delete dest_category_url(@dest_category)
    end

    assert_redirected_to dest_categories_url
  end
end
