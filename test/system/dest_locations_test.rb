require "application_system_test_case"

class DestLocationsTest < ApplicationSystemTestCase
  setup do
    @dest_location = dest_locations(:one)
  end

  test "visiting the index" do
    visit dest_locations_url
    assert_selector "h1", text: "Dest Locations"
  end

  test "creating a Dest location" do
    visit dest_locations_url
    click_on "New Dest Location"

    fill_in "Destination", with: @dest_location.destination_id
    fill_in "Location", with: @dest_location.location_id
    click_on "Create Dest location"

    assert_text "Dest location was successfully created"
    click_on "Back"
  end

  test "updating a Dest location" do
    visit dest_locations_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @dest_location.destination_id
    fill_in "Location", with: @dest_location.location_id
    click_on "Update Dest location"

    assert_text "Dest location was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest location" do
    visit dest_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest location was successfully destroyed"
  end
end
