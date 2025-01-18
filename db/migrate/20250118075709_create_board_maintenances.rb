class CreateBoardMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :board_maintenances do |t|
      t.references :board,        null: false, foreign_key: true
      t.date :maintenance_date,   null: false
      t.text :content,            null: false
      t.boolean :notification,    null: false

      t.timestamps
    end
  end
end
