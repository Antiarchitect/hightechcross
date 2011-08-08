class Team < User
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations
  has_many :guesses, :dependent => :destroy
  has_many :taken_hints, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true

  default_scope :order => 'created_at ASC'

  # Instance methods
  def solved_tasks_in(cross)
    cross.tasks.select { |t| t.solved_by?(self) }
  end

  def time_in_task(task)
    all_guesses = guesses.by_task(task)
    correct_guesses = all_guesses.select(&:correct?)
    if correct_guesses.any?
      correct_guesses.first.created_at - task.cross.start + (10 * taken_hints.by_task(task).size).minutes
    elsif all_guesses.any?
      guesses.first.created_at - task.cross.start
    else
      0
    end
  end

  def general_time_in(cross)
    cross.tasks.inject(0) { |sum, i| sum + time_in_task(i) }
  end
end
