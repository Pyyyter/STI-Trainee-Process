require 'rails_helper'

RSpec.feature "Caronas", type: :feature do
    scenario "Display errors when creating a campus with invalid data" do
        carona = FactoryBot.create(:carona)

        # Visit the edit page for the newly created Carona record
        visit edit_carona_path(carona)
        # Fill in the form with invalid data
        fill_in "parada[local]", with: "ParadaTest"
        click_button "commit"
        click_button "button"

        # Expect to see the error message
        expect(page).to have_text("ParadaTest")
    end
end
