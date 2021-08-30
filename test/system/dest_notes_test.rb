require "application_system_test_case"

class DestNotesTest < ApplicationSystemTestCase
  setup do
    @dest_note = dest_notes(:one)
  end

  test "visiting the index" do
    visit dest_notes_url
    assert_selector "h1", text: "Dest Notes"
  end

  test "creating a Dest note" do
    visit dest_notes_url
    click_on "New Dest Note"

    fill_in "Destination", with: @dest_note.destination_id
    fill_in "Note", with: @dest_note.note_id
    click_on "Create Dest note"

    assert_text "Dest note was successfully created"
    click_on "Back"
  end

  test "updating a Dest note" do
    visit dest_notes_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @dest_note.destination_id
    fill_in "Note", with: @dest_note.note_id
    click_on "Update Dest note"

    assert_text "Dest note was successfully updated"
    click_on "Back"
  end

  test "destroying a Dest note" do
    visit dest_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dest note was successfully destroyed"
  end
end
