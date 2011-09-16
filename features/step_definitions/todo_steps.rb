Given /^I have no todos$/ do
  UserSession.find.user.todos.destroy_all
end

Given /^I have a todo with title "([^"]*)"$/ do |title|
  Factory :todo, :user => UserSession.find.user, :title => title
end

Given /^someone else has a todo with title "([^"]*)"$/ do |title|
  Factory :todo, :title => title
end