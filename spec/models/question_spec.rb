require 'spec_helper'

describe Question do

  it { should validate_presence_of :description }
  it { should belong_to :survey }
  it { should have_many :answers }
end
