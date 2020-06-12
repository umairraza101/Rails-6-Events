class CreateBookableDays < ActiveRecord::Migration[6.0]
  def change
    create_table :bookable_days do |t|
      t.datetime :date
      t.integer :event_id

      t.timestamps
    end
  end
end
