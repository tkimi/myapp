require "application_system_test_case"

class GithubsTest < ApplicationSystemTestCase
  test "visiting the index" do
    Capybara.run_server = false
    Capybara.app_host = "https://github.com"

    visit "/"

    assert_selector "h1", text: "The future of building happens together"
  end
end
