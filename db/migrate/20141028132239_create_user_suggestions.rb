class CreateUserSuggestions < ActiveRecord::Migration
  def change
    create_table :user_suggestions do |t|
      t.string :user_id
      t.string :suggestion_id
  #To do: find an easier way to accomplish this "workflow state". Perhaps make it a boolean type?
      t.string :workflow_state

      t.timestamps
    end
  end
end
