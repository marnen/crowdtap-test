require 'spec_helper'

describe Todo do
  it 'should act as a list' do
    Factory(:todo).respond_to?(:in_list?).should == true
  end
  
  describe "associations" do
    it 'should belong to a user' do
      Todo.reflect_on_association(:user).macro.should == :belongs_to
    end
  end
  
  describe 'validations' do
    before :each do
      @todo = Factory :todo
    end
    
    it 'should be valid with valid data' do
      @todo.should be_valid
    end
    
    it 'should not be valid without a title' do
      @todo.title = nil
      @todo.should_not be_valid
    end
    
    it 'should not be valid without a user' do
      @todo.user_id = nil
      @todo.should_not be_valid
    end
  end
end
