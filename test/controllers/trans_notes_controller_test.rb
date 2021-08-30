require "test_helper"

class TransNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trans_note = trans_notes(:one)
  end

  test "should get index" do
    get trans_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_trans_note_url
    assert_response :success
  end

  test "should create trans_note" do
    assert_difference('TransNote.count') do
      post trans_notes_url, params: { trans_note: { note_id: @trans_note.note_id, transportation_id: @trans_note.transportation_id } }
    end

    assert_redirected_to trans_note_url(TransNote.last)
  end

  test "should show trans_note" do
    get trans_note_url(@trans_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_trans_note_url(@trans_note)
    assert_response :success
  end

  test "should update trans_note" do
    patch trans_note_url(@trans_note), params: { trans_note: { note_id: @trans_note.note_id, transportation_id: @trans_note.transportation_id } }
    assert_redirected_to trans_note_url(@trans_note)
  end

  test "should destroy trans_note" do
    assert_difference('TransNote.count', -1) do
      delete trans_note_url(@trans_note)
    end

    assert_redirected_to trans_notes_url
  end
end
