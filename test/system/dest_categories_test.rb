require "application_system_test_case"

class DestCategoriesTest < ApplicationSystemTestCase
  setup do
    @dest_category = dest_categories(:one)
  end

  test "visiting the index" do
    visit dest_categories_url
    assert_selector "h1", text: "Dest Categories"
  end

  test "creating a Dest category" do
    visit dest_categories_url
    click_on "New Dest Category"

    fill_in "Category", with: @dest_category.category_id
    fill_in "Destination", with: @dest_category.destination_id
    click_on "Create Dest category"

    assert_text "Dest category was successfully created"
    click_on "Back"
  end

  test "updating a Dest category" do
    visit dest_categories_url
    click_on "Edit", match: :first

    fill_in "Category", with: @dest_category.category_id
    fill_in "Destination", with: @dest_category.destination_id
    click_on "Update Dest category"

    assert_text "Dest category was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest category" do
    visit dest_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest category was successfully destroyed"
  end
end
