class CreateSilroks < ActiveRecord::Migration[5.2]
  def change
    create_table :silroks do |t|
      t.string    :kode,        null: false
      t.integer   :daesoo,      null: false
      t.string    :category,    null: false
      t.integer   :which1,      null: false
      t.integer   :which2,      null: false
      t.date      :written_at,  null: false

      t.timestamps
    end
  end
end
