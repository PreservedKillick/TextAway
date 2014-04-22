
def send_and_create_message(message)
  visit messages_path
  click_on "New Message"
  # fill_in 'Send message to', :with => 6099378597 #ENV['TWILIO_TEST_TO_NUMBER']
  # fill_in 'Message from', :with => 16098072279 #ENV['TWILIO_FROM_NUMBER']
  # fill_in 'Your message', :with => "body of message"

  fill_in 'Send message to', :with => message.to
  fill_in 'Message from', :with => message.from
  fill_in 'Your message', :with => message.body
end
