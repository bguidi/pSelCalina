class FormMailer < ApplicationMailer
    def message_mail(subj, name, message)
        @name = name
        @message = message

        mail(subject: subj, to: "leandro@calina.ag")
    end
end
