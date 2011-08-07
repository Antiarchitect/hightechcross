class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      # Foreign keys
      t.integer :team_id # --> Team

      # STI
      t.string :type

      # Devise attributes
      t.database_authenticatable :null => false
      t.rememberable
      t.trackable

      # t.recoverable
      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable

      # Regular attributes
      t.string :name

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    # add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true
  end

  def self.down
    drop_table :users
  end
end