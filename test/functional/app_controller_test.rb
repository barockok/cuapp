require 'test_helper'

class AppControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get channel" do
    get :channel
    assert_response :success
  end

  test "should get chat" do
    get :chat
    assert_response :success
  end

end
