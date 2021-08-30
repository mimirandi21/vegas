require "test_helper"

class DestNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dest_note = dest_notes(:one)
  end

  test "should get index" do
    get dest_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_dest_note_url
    assert_response :success
  end

  test "should create dest_note" do
    assert_difference('DestNote.count') do
      post dest_notes_url, params: { dest_note: { destination_id: @dest_note.destination_id, note_id: @dest_note.note_id } }
    end

    assert_redirected_to dest_note_url(DestNote.last)
  end

  test "should show dest_note" do
    get dest_note_url(@dest_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_dest_note_url(@dest_note)
    assert_response :success
  end

  test "should update dest_note" do
    patch dest_note_url(@dest_note), params: { dest_note: { destination_id: @dest_note.destination_id, note_id: @dest_note.note_id } }
    assert_redirected_to dest_note_url(@dest_note)
  end

  test "should destroy dest_note" do
    assert_difference('DestNote.count', -1) do
      delete dest_note_url(@dest_note)
    end

    assert_redirected_to dest_notes_url
  end
end
