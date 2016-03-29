class User < ActiveRecord::Base
  has_many :fezinha_records

  def name
    last_name? ? "#{first_name} #{last_name}" : first_name
  end

  def send_fezinha
    fezinha = FezinhaGenerator.fezinha
    FezinhaRecord.create!(user: self, numbers: fezinha.to_s)
    FeMailer.fezinha_email(self, fezinha.join(' ')).deliver_now
  end
end
