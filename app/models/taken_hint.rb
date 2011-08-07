class TakenHint < ActiveRecord::Base
  belongs_to :task
  belongs_to :team

  validates :hint_number, :inclusion => 1..3, :uniqueness => true

  scope :by_task, lambda { |task| { :conditions => { :team_id => task } } }
end
