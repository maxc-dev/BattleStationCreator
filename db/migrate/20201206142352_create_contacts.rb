class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.belongs_to :user, foreign_key: true, null: false

      t.text :title, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
