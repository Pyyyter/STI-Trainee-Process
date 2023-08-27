class Parada < ApplicationRecord
  belongs_to :carona

  validates :local, presence: { message: "O campo 'local' não pode estar em branco." }
end
