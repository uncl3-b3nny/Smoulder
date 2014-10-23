class AddUserIdToSuggestionContentsTable < ActiveRecord::Migration
  def change
    add_column :suggestion_contents, :user_id, :string
  end
end
