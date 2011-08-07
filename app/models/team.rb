class Team < ActiveRecord::Base
  has_many :participations, :dependent => :destroy
  has_many :crosses, :through => :participations
  has_many :participants

  validates :name, :presence => true, :uniqueness => true
end
