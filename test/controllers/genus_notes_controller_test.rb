require 'test_helper'

class GenusNotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genus_note = genus_notes(:one)
  end

  test "should get index" do
    get genus_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_genus_note_url
    assert_response :success
  end

  test "should create genus_note" do
    assert_difference('GenusNote.count') do
      post genus_notes_url, params: { genus_note: { created_at: @genus_note.created_at, genus_id: @genus_note.genus_id, note: @genus_note.note, updated_at: @genus_note.updated_at, user_avatar_filename: @genus_note.user_avatar_filename } }
    end

    assert_redirected_to genus_note_url(GenusNote.last)
  end

  test "should show genus_note" do
    get genus_note_url(@genus_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_genus_note_url(@genus_note)
    assert_response :success
  end

  test "should update genus_note" do
    patch genus_note_url(@genus_note), params: { genus_note: { created_at: @genus_note.created_at, genus_id: @genus_note.genus_id, note: @genus_note.note, updated_at: @genus_note.updated_at, user_avatar_filename: @genus_note.user_avatar_filename } }
    assert_redirected_to genus_note_url(@genus_note)
  end

  test "should destroy genus_note" do
    assert_difference('GenusNote.count', -1) do
      delete genus_note_url(@genus_note)
    end

    assert_redirected_to genus_notes_url
  end
end
