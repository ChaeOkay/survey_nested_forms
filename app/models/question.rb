class Question < ActiveRecord::Base
  attr_accessible :description
  validates_presence_of :description
  belongs_to :survey
  has_many :answers
end
