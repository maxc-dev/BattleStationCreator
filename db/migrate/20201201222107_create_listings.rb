class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
