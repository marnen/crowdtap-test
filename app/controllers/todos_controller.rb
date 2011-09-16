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
    quick_action :move_higher
  end
  
  def move_down
    quick_action :move_lower
  end
  
  def check
    quick_action :check!
  end
  
  private
  
  def begin_of_association_chain
    current_user
  end
  
  def quick_action(method)
    resource.send method
    redirect_to :action => 'index'
  end
end
