class CreateCrosses < ActiveRecord::Migration
  def self.up
    create_table :crosses do |t|

      # Regular columns
      t.string :name
      t.boolean :active, :default => true, :null => false
      t.datetime :start

      t.timestamps
    end
  end

  def self.down
    drop_table :crosses
  end
end
