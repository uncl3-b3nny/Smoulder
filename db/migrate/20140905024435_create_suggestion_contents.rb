class CreateSuggestionContents < ActiveRecord::Migration
  def change
    create_table :suggestion_contents do |t|
      t.string :category
      t.string :subcategory
      t.text :actual_context

      t.timestamps
    end
  end
end
