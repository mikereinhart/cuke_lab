require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for divide$/) do
  browser.goto "#{url}/divide"
end

Given(/^I fill in '(\d+)' for 'd_first'$/) do |number|
  browser.text_field(:id => 'd_first').set number
end

Given(/^I fill in '(\d+)' for 'd_second'$/) do |number|
  browser.text_field(:id => 'd_second').set number
end

Given(/^I click on 'Divide'$/) do
  browser.button(:id => 'divide_button').click
end

Then(/^I should find '(\d+\.\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'd_answer').text, answer)
end
