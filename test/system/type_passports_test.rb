require "application_system_test_case"

class TypePassportsTest < ApplicationSystemTestCase
  setup do
    @type_passport = type_passports(:one)
  end

  test "visiting the contacts" do
    visit type_passports_url
    assert_selector "h1", text: "Type Passports"
  end

  test "creating a Type passport" do
    visit type_passports_url
    click_on "New Type Passport"

    fill_in "Name", with: @type_passport.name
    click_on "Create Type passport"

    assert_text "Type passport was successfully created"
    click_on "Back"
  end

  test "updating a Type passport" do
    visit type_passports_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_passport.name
    click_on "Update Type passport"

    assert_text "Type passport was successfully updated"
    click_on "Back"
  end

  test "destroying a Type passport" do
    visit type_passports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type passport was successfully destroyed"
  end
end
