class AddNotesColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :notes, :text
  end
end
