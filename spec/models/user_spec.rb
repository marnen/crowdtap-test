require 'spec_helper'

describe User do
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
