require 'selenium-cucumber'
require 'appium_lib'
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--no-sandbox')
options.add_argument('--headless')
options.add_argument('--disable-gpu')
options.add_argument('--disable-dev-shm-usage')
caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {detach: true})
driver = Selenium::WebDriver.for :chrome ,capabilities: caps, options: options
Given('on page login') do
  driver.get 'https://skhcn.erp.meu-solutions.com/'
  driver.manage.timeouts.implicit_wait=10
end

When('Enter {string} name and {string}') do |string, string2|
  driver.find_element(xpath: '//meu-inventory-login//div[1]/input').send_key(string)
  driver.find_element(xpath: '//meu-inventory-login//div[2]/input').send_key(string2)
end

When('press login page') do
  driver.find_element(:id, 'login-btn').click()
end

Then('Navigate to homepage') do
  driver.find_element(xpath: '//*[@id="kt_header_brand"]/div[1]/a/img[1]').displayed?
  driver.close()
  driver.quit()
end
