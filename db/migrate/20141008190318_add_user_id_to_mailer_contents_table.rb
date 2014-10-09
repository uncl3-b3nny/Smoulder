class AddUserIdToMailerContentsTable < ActiveRecord::Migration
  def change
    add_column :mailer_contents, :user_id, :string
  end
end
