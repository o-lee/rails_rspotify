class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :artist
      t.text :genre
      t.text :mood
      t.text :activity

      t.timestamps null: false
    end
  end
end
