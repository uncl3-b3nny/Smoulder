class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :user_id
      t.string  :title
      t.string  :workflow_state
      t.string  :event_type
      t.string  :history_image_file_path
      t.text    :notes
      t.boolean :allDay
      t.string  :start
      t.string  :end
      t.string  :url
      t.string  :className
      t.boolean :editable
      t.boolean :startEditable
      t.boolean :endEditable
      t.boolean :durationEditable
      t.string  :color
      t.string  :backgroundColor
      t.string  :borderColor
      t.string  :textColor

      t.timestamps
    end
  end
end
