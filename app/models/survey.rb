class Survey < ActiveRecord::Base
  attr_accessible :description, :title, :questions_attributes
  has_many :questions
  validates :title, :presence => true
  validates :description, :presence => true

  accepts_nested_attributes_for :questions
end
