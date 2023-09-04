require 'rails_helper'

RSpec.feature "Campus", type: :feature do
  scenario "Display errors when creating a campus with invalid data" do
    visit new_campu_path

    fill_in "campu_description", with: ""
    fill_in "campu_adress", with: ""
    fill_in "campu_number", with: ""
    fill_in "campu_neighbourhood", with: ""
    fill_in "campu_city", with: ""
    fill_in "campu_cep", with: ""
    fill_in "campu_deactivationDate", with: ""
    click_button "commit"

    expect(page).to have_text("8 errors prohibited this campu from being saved:")
  end
end
