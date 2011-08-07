class Task < ActiveRecord::Base
  belongs_to :cross
  has_many :guesses, :dependent => :destroy
  has_many :taken_hints, :dependent => :destroy

  validates :cross, :presence => true
  validates :content, :presence => true
  validates :answer, :presence => true
  validates :first_hint, :presence => true
  validates :second_hint, :presence => true
  validates :third_hint, :presence => true
  validates_uniqueness_of :content, :scope => :cross_id

  default_scope :order => 'created_at ASC'

  # Instance_methods
  def solved_by?(team)
    guesses.by_team(team).all.any?(&:correct?)
  end
end
