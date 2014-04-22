require 'spec_helper'

describe Message do
  it 'allows user to send and create a new text message', :js => true, :vcr => true do
    send_and_create_message
    click_on "Create Message"
    save_and_open_page
    page.should have_content "Message details"
  end

end
