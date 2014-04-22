require 'spec_helper'

describe Message do

  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }

  it "doesn't save a message if it is not provided good to and from numbers", :vcr => true do
    message = FactoryGirl.build(:bad_from_message)
    message.save.should be_false
  end

end
