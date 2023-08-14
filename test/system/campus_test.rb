require "application_system_test_case"

class CampusTest < ApplicationSystemTestCase
  setup do
    @campu = campus(:one)
  end

  test "visiting the index" do
    visit campus_url
    assert_selector "h1", text: "Campus"
  end

  test "should create campu" do
    visit campus_url
    click_on "New campu"

    fill_in "Adress", with: @campu.adress
    fill_in "Cep", with: @campu.cep
    fill_in "City", with: @campu.city
    fill_in "Deactivationdate", with: @campu.deactivationDate
    fill_in "Description", with: @campu.description
    fill_in "Neighbourhood", with: @campu.neighbourhood
    fill_in "Number", with: @campu.number
    click_on "Create Campu"

    assert_text "Campu was successfully created"
    click_on "Back"
  end

  test "should update Campu" do
    visit campu_url(@campu)
    click_on "Edit this campu", match: :first

    fill_in "Adress", with: @campu.adress
    fill_in "Cep", with: @campu.cep
    fill_in "City", with: @campu.city
    fill_in "Deactivationdate", with: @campu.deactivationDate
    fill_in "Description", with: @campu.description
    fill_in "Neighbourhood", with: @campu.neighbourhood
    fill_in "Number", with: @campu.number
    click_on "Update Campu"

    assert_text "Campu was successfully updated"
    click_on "Back"
  end

  test "should destroy Campu" do
    visit campu_url(@campu)
    click_on "Destroy this campu", match: :first

    assert_text "Campu was successfully destroyed"
  end
end
