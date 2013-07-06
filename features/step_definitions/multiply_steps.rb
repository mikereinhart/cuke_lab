require 'watir'
browser = Watir::Browser.new
url = "http://localhost:3000"

Given(/^I visit the calculator page for multiply$/) do
  browser.goto "#{url}/multiply"
end

Given(/^I fill in '(\d+)' for 'm_first'$/) do |number|
  browser.text_field(:id => 'm_first').set number
end

Given(/^I fill in '(\d+)' for 'm_second'$/) do |number|
  browser.text_field(:id => 'm_second').set number
end

Given(/^I click on 'Multiply'$/) do
  browser.button(:id => 'multiply_button').click
end

Given(/^I fill in nothing for 'm_second'$/) do
  browser.text_field(:id => 'm_second').set 0
end

Then(/^I should get '(\d+\.\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'm_answer').text, answer)
end

Given(/^I fill in '(\d+)\/(\d+)' for 'm_second'$/) do |arg1, arg2|
  num1 = arg1.to_i
  num2 = arg2.to_i
  browser.text_field(:id => 'm_second' ).set (num1/num2)
end