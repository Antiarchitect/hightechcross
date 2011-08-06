class Cross < ActiveRecord::Base
  has_many :tasks

  validates :name, :presence => true
  validates :active, :inclusion => [true, false]
  validates :start, :presence => true
end
