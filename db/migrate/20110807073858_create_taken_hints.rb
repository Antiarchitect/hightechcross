class CreateTakenHints < ActiveRecord::Migration
  def self.up
    create_table :taken_hints do |t|
      # Foreign keys
      t.integer :task_id # --> Task
      t.integer :team_id # --> Team

      # Regular attributes
      t.integer :hint_number

      t.timestamps
    end
  end

  def self.down
    drop_table :taken_hints
  end
end
