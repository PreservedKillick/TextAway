require 'spec_helper'

describe Contact do

  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should have_many :messages }
  it { should validate_numericality_of :number }
  it { should ensure_length_of(:number).is_equal_to(10) }


end
