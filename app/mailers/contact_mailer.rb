class ContactMailer < ActionMailer::Base
    default to: 'urbanhoe14@gmail.com'

    def new_contact(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(from: email, subject: 'Contact Request')
    end
end
