require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails tutorial sample app"
  end

  test "site layout links" do
    get root_path
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end

  test "check title sign up page" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end
end
