# coding: UTF-8

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
  
  describe 'instance methods' do
    describe 'title_with_check' do
      it 'returns the title if checked is false' do
        todo = Factory :todo, :checked => false
        todo.title_with_check.should == todo.title
      end
      
      it 'returns the title preceded by a check if checked is true' do
        todo = Factory :todo, :checked => true
        todo.title_with_check.should == "✓ #{todo.title}"
      end
    end
    
    describe 'check!' do
      it 'should set checked to true' do
        todo = Factory :todo, :checked => false
        todo.check!
        todo.should_not be_changed
        todo.checked.should == true
      end
    end
  end
end
