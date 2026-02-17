require "application_system_test_case"

class GithubsTest < ApplicationSystemTestCase
  test "visiting the index" do
    Capybara.run_server = false
    Capybara.app_host = "https://github.com"

    page.driver.start_tracing(title: "visit_github", screenshots: true, snapshots: true, sources: true)
    visit "/"
    assert_selector "h1", text: "The future of building happens together"
    sleep 1
    page.driver.stop_tracing(path: "./tmp/visit_github.zip")
  end
end
