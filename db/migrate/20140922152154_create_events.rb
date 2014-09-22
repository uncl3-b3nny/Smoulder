class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.boolean :allDay
      t.string :start
      t.string :end
      t.string :url
      t.string :className
      t.boolean :editable
      t.boolean :startEditable
      t.boolean :endEditable
      t.boolean :durationEditable
      t.string :color
      t.string :backgroundColor
      t.string :borderColor
      t.string :textColor

      t.timestamps
    end
  end
end
