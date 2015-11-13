require "test_helper"

class VisitorCanSolveTheSimplePuzzleTest < ActionDispatch::IntegrationTest
  visit root_path

  refute page.has_content? "Solved."

  click_link "1"
  click_link "2"
  click_link "3"
  click_link "4"

  assert page.has_content? "Solved."
end
