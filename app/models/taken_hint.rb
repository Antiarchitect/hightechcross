class TakenHint < ActiveRecord::Base
  belongs_to :task
  belongs_to :team

  validates :hint_number, :inclusion => 1..3
  validates_uniqueness_of :hint_number, :scope => [:team_id, :task_id]

  scope :by_task, lambda { |task| { :conditions => { :task_id => task } } }
end
