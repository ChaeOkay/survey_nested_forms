class Survey < ActiveRecord::Base
  attr_accessible :title, :questions_attributes
  validates_presence_of :title
  has_many :questions
  accepts_nested_attributes_for :questions
end
