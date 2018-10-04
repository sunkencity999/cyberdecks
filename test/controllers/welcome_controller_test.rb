require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get blog" do
    get welcome_blog_url
    assert_response :success
  end

  test "should get builds" do
    get welcome_builds_url
    assert_response :success
  end

  test "should get contact" do
    get welcome_contact_url
    assert_response :success
  end

end
