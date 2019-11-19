require "application_system_test_case"

class GenusTest < ApplicationSystemTestCase
  setup do
    @genu = genus(:one)
  end

  test "visiting the index" do
    visit genus_url
    assert_selector "h1", text: "Genus"
  end

  test "creating a Genu" do
    visit genus_url
    click_on "New Genu"

    fill_in "Created at", with: @genu.created_at
    fill_in "First discovered at", with: @genu.first_discovered_at
    fill_in "Fun fact", with: @genu.fun_fact
    check "Is published" if @genu.is_published
    fill_in "Name", with: @genu.name
    fill_in "Species count", with: @genu.species_count
    fill_in "Sub family", with: @genu.sub_family_id
    fill_in "Updated at", with: @genu.updated_at
    click_on "Create Genu"

    assert_text "Genu was successfully created"
    click_on "Back"
  end

  test "updating a Genu" do
    visit genus_url
    click_on "Edit", match: :first

    fill_in "Created at", with: @genu.created_at
    fill_in "First discovered at", with: @genu.first_discovered_at
    fill_in "Fun fact", with: @genu.fun_fact
    check "Is published" if @genu.is_published
    fill_in "Name", with: @genu.name
    fill_in "Species count", with: @genu.species_count
    fill_in "Sub family", with: @genu.sub_family_id
    fill_in "Updated at", with: @genu.updated_at
    click_on "Update Genu"

    assert_text "Genu was successfully updated"
    click_on "Back"
  end

  test "destroying a Genu" do
    visit genus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genu was successfully destroyed"
  end
end
