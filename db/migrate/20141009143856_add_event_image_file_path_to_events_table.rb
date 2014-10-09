class AddEventImageFilePathToEventsTable < ActiveRecord::Migration
  # The name on this is SUPER confusing. I meant to name add image to mailer_contents
  def change
    add_column :mailer_contents, :suggestion_image_file_path, :string
  end
end
