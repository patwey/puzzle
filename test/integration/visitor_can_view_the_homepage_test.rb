require "test_helper"

class VisitorCanViewTheHomepageTest < ActionDispatch::IntegrationTest
  test "visitor can view the homepage" do
    visit root_path

    within ".puzzle-interface" do
      assert page.has_link? "1"
      assert page.has_link? "2"
      assert page.has_link? "3"
      assert page.has_link? "4"
    end

    refute page.has_content? "Solved."
  end
end
