class AddUserAttributes < ActiveRecord::Migration
  def change
  	add_column :users, :hometown, :string
  	add_column :users, :style, :string
  end
end
