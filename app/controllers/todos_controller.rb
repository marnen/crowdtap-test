class TodosController < ApplicationController
  inherit_resources
  
  def index
    @todo = Todo.new
  end
  
  def create
    create! { {:action => 'index'} }
  end
end
