class CreateParticipations < ActiveRecord::Migration
  def self.up
    create_table :participations do |t|
      # Foreign keys
      t.integer :cross_id # --> Cross
      t.integer :team_id  # --> Team

      t.timestamps
    end
  end

  def self.down
    drop_table :participations
  end
end
