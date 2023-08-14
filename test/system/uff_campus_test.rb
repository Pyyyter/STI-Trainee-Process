require "application_system_test_case"

class UffCampusTest < ApplicationSystemTestCase
  setup do
    @uff_campu = uff_campus(:one)
  end

  test "visiting the index" do
    visit uff_campus_url
    assert_selector "h1", text: "Uff campus"
  end

  test "should create uff campus" do
    visit uff_campus_url
    click_on "New uff campus"

    fill_in "Adress", with: @uff_campu.adress
    fill_in "Cep", with: @uff_campu.cep
    fill_in "City", with: @uff_campu.city
    fill_in "Deactivationdate", with: @uff_campu.deactivationDate
    fill_in "Description", with: @uff_campu.description
    fill_in "Neighbourhood", with: @uff_campu.neighbourhood
    fill_in "Number", with: @uff_campu.number
    click_on "Create Uff campus"

    assert_text "Uff campus was successfully created"
    click_on "Back"
  end

  test "should update Uff campus" do
    visit uff_campu_url(@uff_campu)
    click_on "Edit this uff campus", match: :first

    fill_in "Adress", with: @uff_campu.adress
    fill_in "Cep", with: @uff_campu.cep
    fill_in "City", with: @uff_campu.city
    fill_in "Deactivationdate", with: @uff_campu.deactivationDate
    fill_in "Description", with: @uff_campu.description
    fill_in "Neighbourhood", with: @uff_campu.neighbourhood
    fill_in "Number", with: @uff_campu.number
    click_on "Update Uff campus"

    assert_text "Uff campus was successfully updated"
    click_on "Back"
  end

  test "should destroy Uff campus" do
    visit uff_campu_url(@uff_campu)
    click_on "Destroy this uff campus", match: :first

    assert_text "Uff campus was successfully destroyed"
  end
end
