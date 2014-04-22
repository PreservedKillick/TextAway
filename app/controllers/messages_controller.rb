class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    recipient_numbers = params[:message][:to]
    recipient_numbers.each do |number|
      @contact = Contact.find_by_number(number)
      @message = @contact.messages.new(message_params)
      @message[:to] = @contact.number
      if @message.save
        respond_to do |format|
          format.html { redirect_to message_path(@message) }
          format.js
        end
      else
        render 'new'
      end
    end
  end


  def show
    @message = Message.find(params[:id])
    @contact = Contact.find(@message.contact_id)
  end

private

  def message_params
    params.require(:message).permit(:to, :from, :body, :contact_id)
  end

end
