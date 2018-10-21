require "application_system_test_case"

class TypeCertificatesTest < ApplicationSystemTestCase
  setup do
    @type_certificate = type_certificates(:one)
  end

  test "visiting the contacts" do
    visit type_certificates_url
    assert_selector "h1", text: "Type Certificates"
  end

  test "creating a Type certificate" do
    visit type_certificates_url
    click_on "New Type Certificate"

    fill_in "Name", with: @type_certificate.name
    click_on "Create Type certificate"

    assert_text "Type certificate was successfully created"
    click_on "Back"
  end

  test "updating a Type certificate" do
    visit type_certificates_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_certificate.name
    click_on "Update Type certificate"

    assert_text "Type certificate was successfully updated"
    click_on "Back"
  end

  test "destroying a Type certificate" do
    visit type_certificates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type certificate was successfully destroyed"
  end
end
