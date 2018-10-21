require 'test_helper'

class TypePassportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_passport = type_passports(:one)
  end

  test "should get contacts" do
    get type_passports_url
    assert_response :success
  end

  test "should get new" do
    get new_type_passport_url
    assert_response :success
  end

  test "should create type_passport" do
    assert_difference('TypePassport.count') do
      post type_passports_url, params: { type_passport: { name: @type_passport.name } }
    end

    assert_redirected_to type_passport_url(TypePassport.last)
  end

  test "should show type_passport" do
    get type_passport_url(@type_passport)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_passport_url(@type_passport)
    assert_response :success
  end

  test "should update type_passport" do
    patch type_passport_url(@type_passport), params: { type_passport: { name: @type_passport.name } }
    assert_redirected_to type_passport_url(@type_passport)
  end

  test "should destroy type_passport" do
    assert_difference('TypePassport.count', -1) do
      delete type_passport_url(@type_passport)
    end

    assert_redirected_to type_passports_url
  end
end
