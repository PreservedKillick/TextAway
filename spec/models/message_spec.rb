require 'spec_helper'

describe Message do

  it { should validate_presence_of :body }
  it { should validate_presence_of :to }
  it { should validate_presence_of :from }
  it { should belong_to :contact }

  it "doesn't save a message if it is not provided good to and from numbers", :vcr => true do
    message = FactoryGirl.build(:bad_from_message)
    message.save.should be_false
  end

  it "adds an error if the 'from' number is invalid", :vcr => true do
    message = FactoryGirl.build(:bad_from_message)
    message.save
    message.errors.messages[:base].should eq ["The 'From' number 5678910 is not a valid phone number or shortcode."]
  end
end
