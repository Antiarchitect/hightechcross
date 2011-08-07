class Team < User
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations
  has_many :guesses, :dependent => :destroy
  has_many :taken_hints, :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
end
