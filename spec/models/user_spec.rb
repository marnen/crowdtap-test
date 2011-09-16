require 'spec_helper'

describe User do
  describe 'associations' do
    it 'should have many todos' do
      a = User.reflect_on_association(:todos)
      a.macro.should == :has_many
      a.options[:order].should == 'position'
    end
  end
  
  describe 'validations' do
    before :each do
      @user = Factory :user
    end
    
    it 'should be valid with valid data' do
      @user.should be_valid
    end
    
    it 'should require an e-mail address' do
      @user.email = nil
      @user.should_not be_valid
    end
  end
end
