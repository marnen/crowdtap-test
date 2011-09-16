class Todo < ActiveRecord::Base
  belongs_to :user
  acts_as_list :scope => :user
  validates_presence_of :title, :user_id
end
