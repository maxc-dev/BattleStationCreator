class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.belongs_to :list, foreign_key: true, null: false
      t.belongs_to :part, foreign_key: true, null: false

      t.timestamps
    end
  end
end
