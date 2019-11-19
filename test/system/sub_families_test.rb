require "application_system_test_case"

class SubFamiliesTest < ApplicationSystemTestCase
  setup do
    @sub_family = sub_families(:one)
  end

  test "visiting the index" do
    visit sub_families_url
    assert_selector "h1", text: "Sub Families"
  end

  test "creating a Sub family" do
    visit sub_families_url
    click_on "New Sub Family"

    fill_in "Created at", with: @sub_family.created_at
    fill_in "Name", with: @sub_family.name
    fill_in "Updated at", with: @sub_family.updated_at
    click_on "Create Sub family"

    assert_text "Sub family was successfully created"
    click_on "Back"
  end

  test "updating a Sub family" do
    visit sub_families_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @sub_family.created_at
    fill_in "Name", with: @sub_family.name
    fill_in "Updated at", with: @sub_family.updated_at
    click_on "Update Sub family"

    assert_text "Sub family was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub family" do
    visit sub_families_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub family was successfully destroyed"
  end
end
