require 'test_helper'

class AdboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adboards_index_url
    assert_response :success
  end

end
