class AddPositionToTodos < ActiveRecord::Migration
  def self.up
    add_column :todos, :position, :integer, :null => false, :default => 1
  end

  def self.down
    remove_column :todos, :position
  end
end
