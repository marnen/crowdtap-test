class CreateTodos < ActiveRecord::Migration
  def self.up
    create_table :todos do |t|
      t.string :title, :null => false, :default => ''
      t.string :description
      t.date :due_date
      t.integer :user_id, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :todos
  end
end
