class AddUserIdToPoules < ActiveRecord::Migration[7.1]
  def change
    add_column :poules, :user_id, :integer
  end
end
