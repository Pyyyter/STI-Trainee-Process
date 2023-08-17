class CreateCaronas < ActiveRecord::Migration[7.0]
  def change
    create_table :caronas do |t|
      t.string :motorista
      t.string :inicio
      t.string :fim
      t.date :data
      t.time :hora
      t.integer :numero_de_passageiros
      t.decimal :custo
      t.text :observacao

      t.timestamps
    end
  end
end
