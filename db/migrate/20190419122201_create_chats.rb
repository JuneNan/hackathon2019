class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string    :speaker,     null: false
      t.text      :content,     null: false
      t.integer   :sequence,    null: false

      t.timestamps
    end
  end
end
