class User < ActiveRecord::Base
  acts_as_authentic
  has_many :todos
  validates_presence_of :email
end
