class CreateCampus < ActiveRecord::Migration[7.0]
  def change
    create_table :campus do |t|
      t.string :description
      t.string :adress
      t.integer :number
      t.string :neighbourhood
      t.string :city
      t.integer :cep
      t.date :deactivationDate

      t.timestamps
    end
  end
end
