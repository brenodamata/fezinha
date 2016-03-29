class HomeController < ApplicationController
  # require 'open-uri'

  def index
    # doc = Nokogiri::HTML(open("http://developers.agenciaideias.com.br/loterias/megasena/json"))
    # string = doc.children.children.children.children.first.content
    # hash = eval(string)
    @numeros = FezinhaGenerator.resultado
  end

  def send_all
    User.all.each do |u|
      u.send_fezinha
    end
  end
end
