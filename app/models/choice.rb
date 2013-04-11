class Choice < ActiveRecord::Base
  attr_accessible :value
  belongs_to :question
  validates :value, :presence => true
end
