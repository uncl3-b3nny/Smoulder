class AddTitleToSuggestionContentsTable < ActiveRecord::Migration
  def change
    add_column :suggestion_contents, :title, :string
    add_column :suggestion_contents, :workflow_state, :string
  end
end
