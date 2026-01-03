require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :remote_playwright, screen_size: [ 1400, 1400 ]
end
