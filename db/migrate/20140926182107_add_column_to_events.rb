class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date, :string
  end
end