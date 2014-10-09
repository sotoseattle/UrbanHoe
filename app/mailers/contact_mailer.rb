class ContactMailer < ActionMailer::Base
    default to: 'urbanhoe14@gmail.com'

    def new_contact(name, email, body)
        @name = name
        @email = email
        @body = body`enter code here`

        mail(from: contact.email, subject: 'Contact Request')
    end
end
