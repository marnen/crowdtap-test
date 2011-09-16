class TodosController < ApplicationController
  before_filter :require_user
  inherit_resources
  
  def index
    @todo = Todo.new
  end
  
  def create
    create! { {:action => 'index'} }
  end
  
  def move_up
    resource.move_higher
    redirect_to :action => 'index'
  end
  
  def move_down
    resource.move_lower
    redirect_to :action => 'index'
  end
  
  private
  
  def begin_of_association_chain
    current_user
  end
end
