Given /^I have no todos$/ do
  UserSession.find.user.todos.destroy_all
end