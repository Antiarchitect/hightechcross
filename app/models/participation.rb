class Participation < ActiveRecord::Base
  belongs_to :cross
  belongs_to :team

  validates :cross, :presence => true
  validates :team, :presence => true
  validates_uniqueness_of :cross_id, :scope => :team_id

  def to_label
    team.try(:name)
  end
end
