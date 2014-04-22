
FactoryGirl.define do

  sequence :body do |n|
    @body = Faker::Lorem.sentence
  end

  factory :message do
    body
    to ENV['TWILIO_TEST_TO_NUMBER']
    from ENV['TWILIO_FROM_NUMBER']

    factory :bad_from_message do
      from "5678910"
    end

  end

end
