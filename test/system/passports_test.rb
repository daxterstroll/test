require "application_system_test_case"

class PassportsTest < ApplicationSystemTestCase
  setup do
    @passport = passports(:one)
  end

  test "visiting the contacts" do
    visit passports_url
    assert_selector "h1", text: "Passports"
  end

  test "creating a Passport" do
    visit passports_url
    click_on "New Passport"

    fill_in "Number", with: @passport.number
    click_on "Create Passport"

    assert_text "Passport was successfully created"
    click_on "Back"
  end

  test "updating a Passport" do
    visit passports_url
    click_on "Edit", match: :first

    fill_in "Number", with: @passport.number
    click_on "Update Passport"

    assert_text "Passport was successfully updated"
    click_on "Back"
  end

  test "destroying a Passport" do
    visit passports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passport was successfully destroyed"
  end
end
