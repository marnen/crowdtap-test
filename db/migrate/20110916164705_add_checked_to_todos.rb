class AddCheckedToTodos < ActiveRecord::Migration
  def self.up
    add_column :todos, :checked, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :todos, :checked
  end
end
