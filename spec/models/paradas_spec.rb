require 'rails_helper'

RSpec.describe Parada, type: :model do
  it "Todas as entradas são válidas" do
    carona = Carona.create(motorista: "Motorista", inicio: "Local de Início", fim: "Local de Fim",
                           data: Date.today, hora: Time.now, numero_de_passageiros: 3, custo: 10.0)
    
    parada = Parada.new(local: "Local da Parada", carona: carona)
    expect(parada).to be_valid
  end
end