Given /^I am not logged in$/ do
  if current_session = UserSession.find
    current_session.destroy
  end
end

Then /^I should be logged in as "([^"]*)"$/ do |email|
  UserSession.find.user.email.should == email
end