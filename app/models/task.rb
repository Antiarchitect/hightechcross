class Task < ActiveRecord::Base
  belongs_to :cross

  validates :cross, :presence => true
  validates :content, :presence => true
  validates :answer, :presence => true
  validates :first_hint, :presence => true
  validates :second_hint, :presence => true
  validates :third_hint, :presence => true
  validates_uniqueness_of :content, :scope => :cross_id
end
