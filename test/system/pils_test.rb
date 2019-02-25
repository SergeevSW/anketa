require "application_system_test_case"

class PilsTest < ApplicationSystemTestCase
  setup do
    @pil = pils(:one)
  end

  test "visiting the index" do
    visit pils_url
    assert_selector "h1", text: "Pils"
  end

  test "creating a Pil" do
    visit pils_url
    click_on "New Pil"

    fill_in "Firstname", with: @pil.firstname
    fill_in "Lastname", with: @pil.lastname
    fill_in "Middlename", with: @pil.middlename
    click_on "Create Pil"

    assert_text "Pil was successfully created"
    click_on "Back"
  end

  test "updating a Pil" do
    visit pils_url
    click_on "Edit", match: :first

    fill_in "Firstname", with: @pil.firstname
    fill_in "Lastname", with: @pil.lastname
    fill_in "Middlename", with: @pil.middlename
    click_on "Update Pil"

    assert_text "Pil was successfully updated"
    click_on "Back"
  end

  test "destroying a Pil" do
    visit pils_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pil was successfully destroyed"
  end
end
