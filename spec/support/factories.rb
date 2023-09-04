FactoryBot.define do
    factory :campu do
        description { 'Campu Description' }
        adress { 'Campu Address' }
        number { 123 }
        neighbourhood { 'Campu District' }
        city { 'Campu City' }
        cep { 12345678 }
        deactivationDate { Date.today }
      end
    
  
    factory :carona do
        motorista { 'Campu Description' }
        inicio { 'Gragoatá' }
        fim { 'Gragoata' }
        data { Date.today }
        hora { Time.now }
        numero_de_passageiros { 5 }
        custo { 10.00 }
        observacao { 'Campu District' }
    end

    factory :parada do
        local { 'Campu Description' }
    end
  end