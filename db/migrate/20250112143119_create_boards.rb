class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string  :model,          null: false
      t.string  :brand,          null: false
      t.string  :condition,      null: false
      t.string  :style,          null: false
      t.date    :purchase,       null: false
      t.integer :length,         null: false
      t.integer :price,          null: false

      t.timestamps
    end
  end
end
