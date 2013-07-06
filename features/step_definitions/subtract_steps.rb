require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for subtract$/) do
  browser.goto "#{url}/subtract"
end

Given(/^I fill in '(\d+)' for 's_first'$/) do |number|
  browser.text_field(:id => 's_first').set number
end

Given(/^I fill in '(\d+)' for 's_second'$/) do |number|
  browser.text_field(:id => 's_second').set number
end

Given(/^I fill in nothing for 's_second'$/) do
  browser.text_field(:id => 's_second').set 0
end

Given(/^I click on 'Subtract'$/) do
  browser.button(:id => 'subtract_button').click
end

Then(/^I should view '(\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'subtract_answer').text, answer)
end

Then(/^I should view '(\-\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'subtract_answer').text, answer)   # express the regexp above with the code you wish you had
end