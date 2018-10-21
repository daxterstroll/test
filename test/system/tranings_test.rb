require "application_system_test_case"

class TraningsTest < ApplicationSystemTestCase
  setup do
    @traning = tranings(:one)
  end

  test "visiting the contacts" do
    visit tranings_url
    assert_selector "h1", text: "Tranings"
  end

  test "creating a Traning" do
    visit tranings_url
    click_on "New Traning"

    fill_in "Name", with: @traning.name
    click_on "Create Traning"

    assert_text "Traning was successfully created"
    click_on "Back"
  end

  test "updating a Traning" do
    visit tranings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @traning.name
    click_on "Update Traning"

    assert_text "Traning was successfully updated"
    click_on "Back"
  end

  test "destroying a Traning" do
    visit tranings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traning was successfully destroyed"
  end
end
