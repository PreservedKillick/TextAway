
def send_and_create_message(message)
  visit messages_path
  click_on "New Message"
  select message.to, :from => 'Send message to'
  fill_in 'Message from', :with => message.from
  fill_in 'Your message', :with => message.body
end
