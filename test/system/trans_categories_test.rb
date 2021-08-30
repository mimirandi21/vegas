require "application_system_test_case"

class TransCategoriesTest < ApplicationSystemTestCase
  setup do
    @trans_category = trans_categories(:one)
  end

  test "visiting the index" do
    visit trans_categories_url
    assert_selector "h1", text: "Trans Categories"
  end

  test "creating a Trans category" do
    visit trans_categories_url
    click_on "New Trans Category"

    fill_in "Category", with: @trans_category.category_id
    fill_in "Transportation", with: @trans_category.transportation_id
    click_on "Create Trans category"

    assert_text "Trans category was successfully created"
    click_on "Back"
  end

  test "updating a Trans category" do
    visit trans_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @trans_category.category_id
    fill_in "Transportation", with: @trans_category.transportation_id
    click_on "Update Trans category"

    assert_text "Trans category was successfully updated"
    click_on "Back"
  end

  test "destroying a Trans category" do
    visit trans_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trans category was successfully destroyed"
  end
end
