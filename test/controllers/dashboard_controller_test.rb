require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get dash" do
    get :dash
    assert_response :success
  end

  test "should get amdin" do
    get :amdin
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

end
