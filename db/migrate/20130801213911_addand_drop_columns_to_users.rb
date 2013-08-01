class AddandDropColumnsToUsers < ActiveRecord::Migration
 
def self.up
	remove_column :users, :username
	add_column :users, :username, :string
end

def self.down
	add_column :users, :username
	remove_column :users, :username, :string
end

end