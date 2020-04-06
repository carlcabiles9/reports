class AppMailer < ApplicationMailer
    default to: -> { User.pluck(:email) },
    default from: "cccabiles@cdasia.com"
    def sample_email(users)
        emails = users.collect(&:email).join(", ")
        mail(to: emails, subject: 'Sample Email')
      end
end
