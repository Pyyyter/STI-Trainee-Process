require 'rails_helper'

RSpec.feature "Caronas", type: :feature do
  scenario "Display errors when creating a carona with invalid data" do
    visit new_carona_path

    fill_in "carona[motorista]", with: "Pedro"
    fill_in "carona[data]", with: "03-02-2022"
    fill_in "carona[hora]", with: "10:23"
    fill_in "carona[numero_de_passageiros]", with: "2"
    fill_in "carona[custo]", with: "19"
    fill_in "carona[inicio]", with: "Gragoatá"
    fill_in "carona[fim]", with: "Fim"
    fill_in "carona[observacao]", with: "aaaaaaa"
    click_button "button"

    expect(page).to have_text("Nova Carona")
  end
end
