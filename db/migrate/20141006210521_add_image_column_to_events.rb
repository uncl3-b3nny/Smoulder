class AddImageColumnToEvents < ActiveRecord::Migration
  def change
        add_column :events, :history_image_file_path, :string
  end
end
