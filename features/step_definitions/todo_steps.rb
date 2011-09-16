Given /^I have no todos$/ do
  UserSession.find.user.todos.destroy_all
end

Given /^I have a todo with title "([^"]*)"(?: and position "([^"]*)")?$/ do |title, position|
  options = {:user => UserSession.find.user, :title => title}
  options.merge! :position => position.to_i if position
  Factory :todo, options
end

Given /^someone else has a todo with title "([^"]*)"$/ do |title|
  Factory :todo, :title => title
end