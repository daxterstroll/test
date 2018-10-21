require 'test_helper'

class ClassScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get class_schedule_new_url
    assert_response :success
  end

  test "should get create" do
    get class_schedule_create_url
    assert_response :success
  end

end
