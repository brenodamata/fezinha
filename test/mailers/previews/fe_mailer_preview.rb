# Preview all emails at http://localhost:3000/rails/mailers/fe_mailer
class FeMailerPreview < ActionMailer::Preview
  def fezinha_email_preview
    FeMailer.fezinha_email(User.first, "4 8 15 16 23 42")
  end
end
