class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      # Foreign keys
      t.integer :cross_id # --> Cross

      # Regular columns
      t.text :content
      t.string :answer
      t.string :first_hint
      t.string :second_hint
      t.string :third_hint

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
