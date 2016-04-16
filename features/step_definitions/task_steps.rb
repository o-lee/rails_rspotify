# Add a declarative step here for populating the DB with tasks.

When /^(?:|I )select "(.+)" from the Filter by dropdown$/ do |category|

  page.select("#{category}", :from => 'filter' )

end
=begin

##following code is to try to test for autocomplete

When(/^I select the option containing "([^\"]*)" in the autocomplete$/) do |text|
  locate("li:contains('#{text}')").click
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  page.execute_script %Q{ $('.ui-autocomplete-input input:contains("#{value}")').trigger("mouseenter").click(); }
end

Then /^(?:|I )should see the following "([^"]*)"$/ do |text|
  find('input[placeholder="I\'m going to..."]')
end

=end