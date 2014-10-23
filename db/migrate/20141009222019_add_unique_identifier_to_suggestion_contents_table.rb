class AddUniqueIdentifierToSuggestionContentsTable < ActiveRecord::Migration
  def change
        add_column :suggestion_contents, :unique_identifier, :string
  end
end
