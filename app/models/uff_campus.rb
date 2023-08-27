class UffCampus < ApplicationRecord
    validates :description, presence: { message: "O campo 'description' não pode estar em branco." }
    validates :adress, presence: { message: "O campo 'adress' não pode estar em branco." }
    validates :number, presence: { message: "O campo 'number' não pode estar em branco." },
                        numericality: { only_integer: true, greater_than: 0, message: "O campo 'number' deve ser um número inteiro maior que 0." }
    validates :neighbourhood, presence: { message: "O campo 'neighbourhood' não pode estar em branco." }
    validates :city, presence: { message: "O campo 'city' não pode estar em branco." }
    validates :cep, presence: { message: "O campo 'cep' não pode estar em branco." },
                    numericality: { only_integer: true, greater_than: 0, message: "O campo 'cep' deve ser um número inteiro maior que 0." }      
end
