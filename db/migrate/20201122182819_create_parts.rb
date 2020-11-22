class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.belongs_to :category, index: true, foreign_key: true, null: false
      t.belongs_to :manufacturer, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.string :description
      t.integer :power, default: 0
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
