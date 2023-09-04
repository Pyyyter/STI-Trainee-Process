require 'rails_helper'

RSpec.feature "Caronas", type: :feature do
  scenario "Display errors when creating a carona with invalid data" do
    visit new_carona_path

    fill_in "carona[motorista]", with: ""
    fill_in "carona[data]", with: ""
    fill_in "carona[hora]", with: ""
    fill_in "carona[numero_de_passageiros]", with: ""
    fill_in "carona[custo]", with: ""
    fill_in "carona[inicio]", with: ""
    fill_in "carona[fim]", with: ""
    fill_in "carona[observacao]", with: ""
    click_button "button"

    expect(page).to have_text("Nova Carona")
  end
end
