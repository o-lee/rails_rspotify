class CreateProjects < ActiveRecord::Migration
  def up
    create_table :projects do |t|
      t.string :title
      t.string :user
      t.text :description
      t.datetime :due_date
      t.text :extended_description
      # Add fields that let Rails automatically keep track
      # of when project tasks are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :projects
  end
end
