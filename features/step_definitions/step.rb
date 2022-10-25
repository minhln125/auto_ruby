require 'selenium-cucumber'
require 'appium_lib'
options = Selenium::WebDriver::Options.firefox
options.browser_version = 'latest'
options.platform_name = 'Windows 10'
sauce_options = {}
sauce_options[:build] = '<N01>'
sauce_options[:name] = '<Testsaucelab>'
options.add_option('sauce:options', sauce_options)

url = 'https://oauth-minhln125-44ef9:26839fe5-aa95-4ac3-8904-b6b72f550922@ondemand.apac-southeast-1.saucelabs.com:443/wd/hub'
driver = Selenium::WebDriver.for(:remote, :url => url, :capabilities => options)
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
