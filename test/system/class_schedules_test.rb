require "application_system_test_case"

class ClassSchedulesTest < ApplicationSystemTestCase
  setup do
    @class_schedule = class_schedules(:one)
  end

  test "visiting the index" do
    visit class_schedules_url
    assert_selector "h1", text: "Class Schedules"
  end

  test "creating a Class schedule" do
    visit class_schedules_url
    click_on "New Class Schedule"

    fill_in "Attachment", with: @class_schedule.attachment
    click_on "Create Class schedule"

    assert_text "Class schedule was successfully created"
    click_on "Back"
  end

  test "updating a Class schedule" do
    visit class_schedules_url
    click_on "Edit", match: :first

    fill_in "Attachment", with: @class_schedule.attachment
    click_on "Update Class schedule"

    assert_text "Class schedule was successfully updated"
    click_on "Back"
  end

  test "destroying a Class schedule" do
    visit class_schedules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class schedule was successfully destroyed"
  end
end
