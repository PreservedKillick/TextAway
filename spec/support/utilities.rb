# to be continued depending on how VCR might be used for integration testing

def send_and_create_message
  visit messages_path
  click_on "New Message"
  message = FactoryGirl.build(:message)
  fill_in 'Send message to', :with => message.to
  fill_in 'Message from', :with => message.from
  fill_in 'Your message', :with => message.body
end
