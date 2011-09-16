Given /^I am not logged in$/ do
  if current_session = UserSession.find
    current_session.destroy
  end
end

Given /^I am logged in$/ do
  visit login_path
  fill_in 'E-mail address', :with => Faker::Internet.email
  click_button 'Log in'
end

Then /^I should be logged in as "([^"]*)"$/ do |email|
  UserSession.find.user.email.should == email
end