class Cross < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  has_many :participations, :dependent => :destroy
  has_many :teams, :through => :participations

  validates :name, :presence => true, :uniqueness => true
  validates :active, :inclusion => [true, false]
  validates :start, :presence => true

  scope :active, lambda { { :conditions => ["active = ? AND start < ?", true, Time.now] } }
  default_scope :order => 'created_at DESC'
end
