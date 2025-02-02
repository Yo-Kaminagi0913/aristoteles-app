class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.integer :genre_id
      t.integer :medium_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
