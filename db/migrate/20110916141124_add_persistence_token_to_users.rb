class AddPersistenceTokenToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :persistence_token, :string, :null => false, :default => ''
  end

  def self.down
    remove_column :users, :persistence_token
  end
end
