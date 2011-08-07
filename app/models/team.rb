class Team < User
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations

  validates :name, :presence => true, :uniqueness => true
end
