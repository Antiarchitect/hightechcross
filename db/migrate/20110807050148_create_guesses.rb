class CreateGuesses < ActiveRecord::Migration
  def self.up
    create_table :guesses do |t|
      # Foreign keys
      t.integer :task_id # --> Task
      t.integer :team_id # --> Team

      # Regular attributes
      t.string :answer

      t.timestamps
    end
  end

  def self.down
    drop_table :guesses
  end
end
