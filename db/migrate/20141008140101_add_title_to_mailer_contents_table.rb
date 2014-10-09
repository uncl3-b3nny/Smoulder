class AddTitleToMailerContentsTable < ActiveRecord::Migration
  def change
    add_column :mailer_contents, :title, :string
    add_column :mailer_contents, :workflow_state, :string
  end
end
