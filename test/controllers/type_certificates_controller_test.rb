require 'test_helper'

class TypeCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_certificate = type_certificates(:one)
  end

  test "should get contacts" do
    get type_certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_type_certificate_url
    assert_response :success
  end

  test "should create type_certificate" do
    assert_difference('TypeCertificate.count') do
      post type_certificates_url, params: { type_certificate: { name: @type_certificate.name } }
    end

    assert_redirected_to type_certificate_url(TypeCertificate.last)
  end

  test "should show type_certificate" do
    get type_certificate_url(@type_certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_certificate_url(@type_certificate)
    assert_response :success
  end

  test "should update type_certificate" do
    patch type_certificate_url(@type_certificate), params: { type_certificate: { name: @type_certificate.name } }
    assert_redirected_to type_certificate_url(@type_certificate)
  end

  test "should destroy type_certificate" do
    assert_difference('TypeCertificate.count', -1) do
      delete type_certificate_url(@type_certificate)
    end

    assert_redirected_to type_certificates_url
  end
end
