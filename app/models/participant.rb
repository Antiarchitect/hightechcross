class Participant < User
  belongs_to :team

  validates :team, :presence => true

  def admin?
    false
  end

  def participant?
    true
  end
end
