require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get login_process" do
    get :login_process
    assert_response :success
  end

end
