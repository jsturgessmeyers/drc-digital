class AddUserIdToEtemplates < ActiveRecord::Migration
  def change
    add_column :etemplates, :user_id, :integer
    add_index :etemplates, :user_id
  end
end
