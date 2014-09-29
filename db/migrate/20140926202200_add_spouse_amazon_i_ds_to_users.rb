class AddSpouseAmazonIDsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :spouse_amazon_id, :string
  end
end
