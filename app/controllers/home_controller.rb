class HomeController < ApplicationController

  def index
    @numeros = FezinhaGenerator.resultado
  end

  def send_all
    User.all.each do |u|
      u.send_fezinha
    end
    @bets = FezinhaRecord.latest
  end
end
