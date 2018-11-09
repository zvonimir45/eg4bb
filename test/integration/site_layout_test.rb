require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 4
    assert_select "a[href=?]", help_path, count: 2
    assert_select "a[href=?]", about_path, count: 2
    assert_select "a[href=?]", contacts_path, count: 3
    assert_select "a[href=?]", links_path, count: 2
    assert_select "a[href=?]", sitemap_path, count: 2
    assert_select "a[href=?]", staff_path, count: 2
  end

end
