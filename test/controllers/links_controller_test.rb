require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get forward" do
    get :forward
    assert_response :success
  end

end
