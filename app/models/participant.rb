class Participant < User
  def admin?
    false
  end

  def participant?
    true
  end
end
