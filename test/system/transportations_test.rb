require "application_system_test_case"

class TransportationsTest < ApplicationSystemTestCase
  setup do
    @transportation = transportations(:one)
  end

  test "visiting the index" do
    visit transportations_url
    assert_selector "h1", text: "Transportations"
  end

  test "creating a Transportation" do
    visit transportations_url
    click_on "New Transportation"

    fill_in "Hours", with: @transportation.hours
    fill_in "Name", with: @transportation.name
    fill_in "Website", with: @transportation.website
    click_on "Create Transportation"

    assert_text "Transportation was successfully created"
    click_on "Back"
  end

  test "updating a Transportation" do
    visit transportations_url
    click_on "Edit", match: :first

    fill_in "Hours", with: @transportation.hours
    fill_in "Name", with: @transportation.name
    fill_in "Website", with: @transportation.website
    click_on "Update Transportation"

    assert_text "Transportation was successfully updated"
    click_on "Back"
  end

  test "destroying a Transportation" do
    visit transportations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transportation was successfully destroyed"
  end
end
