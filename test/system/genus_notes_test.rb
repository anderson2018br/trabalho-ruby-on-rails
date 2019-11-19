require "application_system_test_case"

class GenusNotesTest < ApplicationSystemTestCase
  setup do
    @genus_note = genus_notes(:one)
  end

  test "visiting the index" do
    visit genus_notes_url
    assert_selector "h1", text: "Genus Notes"
  end

  test "creating a Genus note" do
    visit genus_notes_url
    click_on "New Genus Note"

    fill_in "Created at", with: @genus_note.created_at
    fill_in "Genus", with: @genus_note.genus_id
    fill_in "Note", with: @genus_note.note
    fill_in "Updated at", with: @genus_note.updated_at
    fill_in "User avatar filename", with: @genus_note.user_avatar_filename
    click_on "Create Genus note"

    assert_text "Genus note was successfully created"
    click_on "Back"
  end

  test "updating a Genus note" do
    visit genus_notes_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @genus_note.created_at
    fill_in "Genus", with: @genus_note.genus_id
    fill_in "Note", with: @genus_note.note
    fill_in "Updated at", with: @genus_note.updated_at
    fill_in "User avatar filename", with: @genus_note.user_avatar_filename
    click_on "Update Genus note"

    assert_text "Genus note was successfully updated"
    click_on "Back"
  end

  test "destroying a Genus note" do
    visit genus_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genus note was successfully destroyed"
  end
end
