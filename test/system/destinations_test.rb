require "application_system_test_case"

class DestinationsTest < ApplicationSystemTestCase
  setup do
    @destination = destinations(:one)
  end

  test "visiting the index" do
    visit destinations_url
    assert_selector "h1", text: "Destinations"
  end

  test "creating a Destination" do
    visit destinations_url
    click_on "New Destination"

    fill_in "Hours", with: @destination.hours
    fill_in "Name", with: @destination.name
    fill_in "Website", with: @destination.website
    click_on "Create Destination"

    assert_text "Destination was successfully created"
    click_on "Back"
  end

  test "updating a Destination" do
    visit destinations_url
    click_on "Edit", match: :first

    fill_in "Hours", with: @destination.hours
    fill_in "Name", with: @destination.name
    fill_in "Website", with: @destination.website
    click_on "Update Destination"

    assert_text "Destination was successfully updated"
    click_on "Back"
  end

  test "destroying a Destination" do
    visit destinations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destination was successfully destroyed"
  end
end
