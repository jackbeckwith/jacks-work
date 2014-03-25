class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.integer :favorites
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
