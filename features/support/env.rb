# Arquivo onde ficam as bibliotecas que serão usadas durante o teste
require 'selenium-webdriver'
require 'capybara'
require 'site_prism'
require 'rspec'
require 'cucumber'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :remote, :url => 'http://localhost:4444/wb/hub', :desired_capabilities => :chrome   )
end

Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximaze
    config.default_max_wait_time = 10
    config.app_host = 'http://automationpractice.com/index.php'
end