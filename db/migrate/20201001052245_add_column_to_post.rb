class AddColumnToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :integer, null: false
  end
end
