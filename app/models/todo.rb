# coding: UTF-8

class Todo < ActiveRecord::Base
  belongs_to :user
  acts_as_list :scope => :user
  validates_presence_of :title, :user_id
  
  # Sets checked to true and saves the record.
  def check!
    update_attribute :checked, true
  end
  
  # Returns the title, preceded by a check if checked? is true.
  def title_with_check
    check_string = checked? ? '✓ ' : ''
    "#{check_string}#{title}"
  end
end
