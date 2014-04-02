require 'spec_helper'

describe Section do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should have_many :lessons }

  # context '' do
  #   end
  # end
end
