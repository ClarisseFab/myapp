class AddUserIdToEquipes < ActiveRecord::Migration[7.1]
  def change
    add_column :equipes, :user_id, :integer
    add_index :equipes, :user_id
  end
end
