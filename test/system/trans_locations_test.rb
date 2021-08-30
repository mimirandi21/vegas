require "application_system_test_case"

class TransLocationsTest < ApplicationSystemTestCase
  setup do
    @trans_location = trans_locations(:one)
  end

  test "visiting the index" do
    visit trans_locations_url
    assert_selector "h1", text: "Trans Locations"
  end

  test "creating a Trans location" do
    visit trans_locations_url
    click_on "New Trans Location"

    fill_in "Location", with: @trans_location.location_id
    fill_in "Transportation", with: @trans_location.transportation_id
    click_on "Create Trans location"

    assert_text "Trans location was successfully created"
    click_on "Back"
  end

  test "updating a Trans location" do
    visit trans_locations_url
    click_on "Edit", match: :first

    fill_in "Location", with: @trans_location.location_id
    fill_in "Transportation", with: @trans_location.transportation_id
    click_on "Update Trans location"

    assert_text "Trans location was successfully updated"
    click_on "Back"
  end

  test "destroying a Trans location" do
    visit trans_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trans location was successfully destroyed"
  end
end
