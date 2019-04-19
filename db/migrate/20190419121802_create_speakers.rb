class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string    :lid,         null: false
      t.string    :name,        null: false
      t.string    :chinese,     null: false
      t.string    :which,       null: false
      t.string    :photo_path,  null: false
      t.text      :profile1,    null: false
      t.text      :profile2,    null: false
      t.text      :profile3,    null: false

      t.timestamps
    end
  end
end
