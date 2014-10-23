class AddEventImageFilePathToEventsTable < ActiveRecord::Migration
  # The name on this is SUPER confusing. I meant to name add image to suggestion_contents
  def change
    add_column :suggestion_contents, :suggestion_image_file_path, :string
  end
end
