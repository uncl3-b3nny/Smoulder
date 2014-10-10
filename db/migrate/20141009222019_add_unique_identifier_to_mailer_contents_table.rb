class AddUniqueIdentifierToMailerContentsTable < ActiveRecord::Migration
  def change
        add_column :mailer_contents, :unique_identifier, :string
  end
end
