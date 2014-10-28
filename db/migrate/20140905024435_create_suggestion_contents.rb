class CreateSuggestionContents < ActiveRecord::Migration
  def change
    create_table :suggestion_contents do |t|
      t.integer :user_id
      t.string  :primary_category
      t.string  :primary_subcategory
      t.string  :secondary_category
      t.string  :name
      t.string  :content_title
      t.text    :content
      t.string  :options
      t.string  :address
      t.string  :time_frame
      t.string  :budget_size
      t.string  :workflow_state
      t.string  :suggestion_image_file_path
      t.string  :url

      t.timestamps
    end
  end
end
