class AddUserIdToMatches < ActiveRecord::Migration[7.1]
  def change
    add_column :matches, :user_id, :integer
  end
end
