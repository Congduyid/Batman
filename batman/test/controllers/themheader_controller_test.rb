require 'test_helper'

class ThemheaderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get themheader_index_url
    assert_response :success
  end

end
