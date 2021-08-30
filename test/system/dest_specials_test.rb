require "application_system_test_case"

class DestSpecialsTest < ApplicationSystemTestCase
  setup do
    @dest_special = dest_specials(:one)
  end

  test "visiting the index" do
    visit dest_specials_url
    assert_selector "h1", text: "Dest Specials"
  end

  test "creating a Dest special" do
    visit dest_specials_url
    click_on "New Dest Special"

    fill_in "Destination", with: @dest_special.destination_id
    fill_in "Special", with: @dest_special.special_id
    click_on "Create Dest special"

    assert_text "Dest special was successfully created"
    click_on "Back"
  end

  test "updating a Dest special" do
    visit dest_specials_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @dest_special.destination_id
    fill_in "Special", with: @dest_special.special_id
    click_on "Update Dest special"

    assert_text "Dest special was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest special" do
    visit dest_specials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest special was successfully destroyed"
  end
end
