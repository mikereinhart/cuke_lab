require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

# begin the step definitions
Given(/^I visit the calculator page for add$/) do
  browser.goto "#{url}/add"
end

Given(/^I fill in '(\d+)' for 'first'$/) do |number|
  browser.text_field(:id => 'first').set number
end

Given(/^I fill in '(\d+)' for 'second'$/) do |number|
  browser.text_field(:id => 'second').set number
end

Given(/^I fill in nothing for 'second'$/) do
  browser.text_field(:id => 'second').set 0
end

Given(/^I fill in nothing for 'first'$/) do
  browser.text_field(:id => 'first').set 0
end

Given(/^I click on 'Add'$/) do
  browser.button(:id => 'add_button').click
end

Then(/^I should see '(\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'answer').text, answer)
end





# close browsers after testing
# browser.close





# browser = Watir::Browser.new
# browser.goto "http://www.google.com"
# browser.text_field(:name => 'q').set('reinhardt')
# browser.button(name: 'btnG').click