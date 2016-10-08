require 'test_helper'

class CutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cuts_index_url
    assert_response :success
  end

  test "should get cut" do
    get cuts_cut_url
    assert_response :success
  end

end
