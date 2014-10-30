class AddCategoryToUserSuggestions < ActiveRecord::Migration
  def change
    add_column :user_suggestions, :primary_category, :string
  end
end
