# spec/features/campus_spec.rb
require 'rails_helper'

RSpec.describe Campu, "Validação das entradas dos Campus", type: :model do
  context "Validations" do
    it 'Todas as entradas são válidas' do
      campu = FactoryBot.build(:campu)
      expect(campu).to be_valid
    end

    it "não é válido sem um nome" do
      campu = FactoryBot.build(:campu, description: nil)
      expect(campu).to_not be_valid
    end

    it "não é válido sem um endereço" do
      campu = FactoryBot.build(:campu, adress: nil)
      expect(campu).to_not be_valid
    end

    it "não é válido sem um numero" do
      campu = FactoryBot.build(:campu, number: nil)
      expect(campu).to_not be_valid
    end

    it "não é válido sem uma bairro" do
      campu = FactoryBot.build(:campu, neighbourhood: nil)
      expect(campu).to_not be_valid
    end

    it "não é válido sem uma cidade" do
      campu = FactoryBot.build(:campu, city: nil)
      expect(campu).to_not be_valid
    end

    it "não é válido sem um número cep" do
      campu = FactoryBot.build(:campu, cep: nil)
      expect(campu).to_not be_valid
    end
  end
end
