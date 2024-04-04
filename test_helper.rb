require 'test/unit'
require 'capybara'
require 'capybara/dsl'
require 'webdrivers/chromedriver'

module TestHelper

  def setup
    # Capybara.register_driver :chrome do |app|
    #   Capybara::Selenium::Driver.new(app,
    #                                  :browser => :chrome,
    #                                  options: chrome_options)
    # end
    # Capybara.default_driver = :chrome
    Capybara.default_max_wait_time = 20
    Capybara.app_host = "http://localhost:4567"
    Capybara.server_port = 4567
    Capybara.app = BookshelfApp
  end
  
  # Settings and profile for the Chrome Browser
  # NOTE: still cannot get headless working
  def chrome_options
    opts = Selenium::WebDriver::Chrome::Options.new
    # opts.add_argument('--headless') unless ENV['UI']
    opts.add_argument('--no-sandbox')
    opts.add_argument('--disable-gpu')
    opts.add_argument('--disable-dev-shm-usage')
    opts.add_argument('--window-size=1920,1080')

    opts.add_preference('download.default_directory', '/home/map7/Downloads')

    opts.add_preference(:download,
                        directory_upgrade: true,
                        prompt_for_download: false,
                        default_directory: "/home/map7/Downloads")

    opts.add_preference(:browser, set_download_behavior: { behavior: 'allow' })
    opts
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

end
