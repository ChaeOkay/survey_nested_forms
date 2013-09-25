class Question < ActiveRecord::Base
  validates_presence_of :description
  belongs_to :survey
end
