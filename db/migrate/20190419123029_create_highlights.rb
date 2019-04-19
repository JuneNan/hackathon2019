class CreateHighlights < ActiveRecord::Migration[5.2]
  def change
    create_table :highlights do |t|
      t.integer   :silrok_id,   null: false
      t.integer   :start_at,    null: false
      t.integer   :end_at,      null: false

      t.timestamps
    end
  end
end
