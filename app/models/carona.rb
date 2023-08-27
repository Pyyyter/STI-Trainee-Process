class Carona < ApplicationRecord
    has_many :paradas, dependent: :destroy
  
    validates :motorista, :inicio, :fim, :data, :hora, presence: { message: "não pode estar em branco." }
    validates :numero_de_passageiros, presence: { message: "não pode estar em branco." },
                                     numericality: { only_integer: true, greater_than: 0, message: "deve ser um número inteiro maior que 0." }
    validates :custo, presence: { message: "não pode estar em branco." },
                     numericality: { greater_than_or_equal_to: 0, message: "deve ser um número maior ou igual a 0." }
  end
  