require "test_helper"

class StudyRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get study_records_index_url
    assert_response :success
  end

  test "should get show" do
    get study_records_show_url
    assert_response :success
  end
end
