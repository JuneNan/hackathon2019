class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string    :kode,      null: false
      t.string    :lid,       null: false
      t.string    :p_name,    null: false
      t.integer   :sequence,  null: false
      t.text      :content,   null: false

      t.timestamps
    end
  end
end
