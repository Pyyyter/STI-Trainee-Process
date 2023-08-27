class Campu < ApplicationRecord
    validates :description, :adress, :number, :neighbourhood, :city, :cep, presence: { message: "não pode estar em branco." }
    validates :number, numericality: { only_integer: true, greater_than: 0, message: "deve ser um número inteiro maior que 0." }
    validates :cep, numericality: { only_integer: true, greater_than: 0, message: "deve ser um número inteiro maior que 0." }
end
