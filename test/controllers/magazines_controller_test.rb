require 'test_helper'

class MagazinesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get magazines_show_url
    assert_response :success
  end

end
