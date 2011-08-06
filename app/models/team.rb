class Team < ActiveRecord::Base
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations

  validates :name, :presence => true, :uniqueness => true
end
