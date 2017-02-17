require 'test_helper'

class WithDbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get with_db_index_url
    assert_response :success
  end

end
