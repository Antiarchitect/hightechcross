class Admin < User
  def admin?
    true
  end

  def participant?
    false
  end
end
