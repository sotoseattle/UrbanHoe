class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      ContactMailer.new_contact(
        @contact.name,
        @contact.email,
        @contact.body).deliver
      redirect_to root_url, notice: "Your message has been sent. Thank you for contacting us."
    else
      render "new", error: "Please try the message again."

    end
  end

  def send_mail
      name = params[:name]
      email = params[:email]
      body = params[:comments]
      ContactMailer.contact_email(name, email, body).deliver
      redirect_to contact_path, notice: 'Message sent'
  end
end
