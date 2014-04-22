require 'spec_helper'

describe Message do
  it 'allows user to send and create a new text message', :js => true, :vcr => true do
    message = FactoryGirl.build(:message)
    send_and_create_message(message)
    click_on "Create Message"
    #page.save_screenshot('tmp/screenshot.png')
    page.should have_content message.body
  end

end
