class FeMailer < ActionMailer::Base
  default from: 'donotreply@fezinha.com'

  def fezinha_email destinatario, numeros
    @numeros = numeros
    @destinatario = destinatario
    mail(to: @destinatario.email, subject: 'Sua fezinha semanal')
  end

end
