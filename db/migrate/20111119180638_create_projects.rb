class CreatePlaylist < ActiveRecord::Migration
  def up
    create_table :choices do |t|
      t.string :title
      t.string :artist
      t.text :genre
      t.text :mood
      t.text :activity
      # Add fields that let Rails automatically keep track
      # of when project tasks are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :choices
  end
end
