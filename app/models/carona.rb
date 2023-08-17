class Carona < ApplicationRecord
    has_many :paradas, dependent: :destroy
end