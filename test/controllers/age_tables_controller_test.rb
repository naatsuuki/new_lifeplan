require "test_helper"

class AgeTablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get age_tables_index_url
    assert_response :success
  end
end
