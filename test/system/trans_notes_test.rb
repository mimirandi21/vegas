require "application_system_test_case"

class TransNotesTest < ApplicationSystemTestCase
  setup do
    @trans_note = trans_notes(:one)
  end

  test "visiting the index" do
    visit trans_notes_url
    assert_selector "h1", text: "Trans Notes"
  end

  test "creating a Trans note" do
    visit trans_notes_url
    click_on "New Trans Note"

    fill_in "Note", with: @trans_note.note_id
    fill_in "Transportation", with: @trans_note.transportation_id
    click_on "Create Trans note"

    assert_text "Trans note was successfully created"
    click_on "Back"
  end

  test "updating a Trans note" do
    visit trans_notes_url
    click_on "Edit", match: :first

    fill_in "Note", with: @trans_note.note_id
    fill_in "Transportation", with: @trans_note.transportation_id
    click_on "Update Trans note"

    assert_text "Trans note was successfully updated"
    click_on "Back"
  end

  test "destroying a Trans note" do
    visit trans_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trans note was successfully destroyed"
  end
end
