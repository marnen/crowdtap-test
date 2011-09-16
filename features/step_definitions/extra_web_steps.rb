Then /^I should see the following in order:$/ do |table|
  # table is a Cucumber::Ast::Table
  regexp = %r{#{table.raw.flatten.collect {|x| Regexp.escape x }.join '.*'}}m
  
  page.should have_xpath('//*', :text => regexp)
end