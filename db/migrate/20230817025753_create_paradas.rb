class CreateParadas < ActiveRecord::Migration[7.0]
  def change
    create_table :paradas do |t|
      t.string :local
      t.references :carona, null: false, foreign_key: true

      t.timestamps
    end
  end
end
