class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :abbrv
      t.text :description
      t.boolean :compulsory, default: true

      t.timestamps
    end
  end
end
