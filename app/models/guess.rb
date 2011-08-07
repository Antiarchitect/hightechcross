class Guess < ActiveRecord::Base
  belongs_to :team
  belongs_to :task

  attr_accessible :answer, :task_id

  validates :task, :presence => true
  validates :team, :presence => true
  validates :answer, :presence => true
  validates_with GuessValidator

  scope :by_task, lambda { |task| { :conditions => { :team_id => task } } }
  scope :by_team, lambda { |team| { :conditions => { :team_id => team } } }
  default_scope :order => 'created_at DESC'

  # Instance methods
  def correct?
    task.answer == answer ? true : false
  end
end
