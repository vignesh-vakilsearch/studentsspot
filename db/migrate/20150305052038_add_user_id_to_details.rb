class AddUserIdToDetails < ActiveRecord::Migration
  def change
    add_column :details, :user_id, :string
  end
end
