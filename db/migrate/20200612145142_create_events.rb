class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :user_id
      t.integer :status
      t.timestamps
    end
  end
end
