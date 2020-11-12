class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.integer :category, null: false
      t.integer :manufacturer, null: false
      t.string :name, null: false
      t.string :description
      t.string :image_url
      t.decimal :price, null: false

      t.timestamps
    end

    create_table :manufacturers do |m|
      m.string :name, null: false

      m.timestamps
    end
  end
end
