# spec/features/caronas_spec.rb
require 'rails_helper'

RSpec.describe Carona, "Validação das entradas das Caronas", type: :model do
  context "Validations" do
    it 'Todas as entradas são válidas' do
      carona = FactoryBot.build(:carona)
      expect(carona).to be_valid
    end

    it "não é válido sem um motorista" do
      carona = FactoryBot.build(:carona, motorista: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido sem uma inicio" do
      carona = FactoryBot.build(:carona, inicio: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido sem um destino" do
      carona = FactoryBot.build(:carona, fim: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido sem uma data" do
      carona = FactoryBot.build(:carona, data: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido sem um horário" do
      carona = FactoryBot.build(:carona, hora: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido sem um número de numero_de_passageiros" do
      carona = FactoryBot.build(:carona, numero_de_passageiros: nil)
      expect(carona).to_not be_valid
    end

    it "não é válido com um número de numero_de_passageiros negativo" do
      carona = FactoryBot.build(:carona, numero_de_passageiros: -1)
      expect(carona).to_not be_valid
    end
  end
end
