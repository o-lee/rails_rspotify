# Add a declarative step here for populating the DB with tasks.

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that task to the database here.
  end
  fail "Unimplemented"
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  fail "Unimplemented"
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I unselect the following users: Skye, Coulson, Ward"
#  "When I select the following users: Coulson"

When /I (un)?select the following users: (.*)/ do |uncheck, user_list|
  # HINT: use String#split to split up the user_list, then
  #   iterate over the users and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  fail "Unimplemented"
end

Then /I should see all the tasks/ do
  # Make sure that all the tasks in the app are visible in the table
  fail "Unimplemented"
end