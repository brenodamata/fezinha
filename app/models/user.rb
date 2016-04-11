class User < ActiveRecord::Base
  has_many :fezinha_records

  def name
    last_name? ? "#{first_name} #{last_name}" : first_name
  end

  def send_fezinha
    begin
      fezinha = FezinhaGenerator.fezinha
      FezinhaRecord.create!(user: self, numbers: fezinha.to_s)
      FeMailer.fezinha_email(self, fezinha.join(' ')).deliver_now
    rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
      #error handling
      FezinhaRecord.last.toggle!(:sent)
      puts "======================================="
      puts "DEU RUIIMMMMMMMMMM"
      puts "#{self.name}"
      puts "#{e}"
      puts "======================================="
    end
  end
end
