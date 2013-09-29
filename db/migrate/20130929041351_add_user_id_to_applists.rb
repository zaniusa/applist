class AddUserIdToApplists < ActiveRecord::Migration
  def change
  	add_column :applists, :user_id, :integer
  	add_index :applists, :user_id
  end
end
