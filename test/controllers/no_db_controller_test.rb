require 'test_helper'

class NoDbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get no_db_index_url
    assert_response :success
  end

end
