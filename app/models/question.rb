class Question < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :survey
  has_many :answers
end
