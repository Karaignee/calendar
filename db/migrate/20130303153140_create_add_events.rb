class CreateAddEvents < ActiveRecord::Migration
  def change
    create_table :add_events do |t|
      t.string :event_name
      t.date :event_date
      t.string :content

      t.timestamps
    end
  end
end
