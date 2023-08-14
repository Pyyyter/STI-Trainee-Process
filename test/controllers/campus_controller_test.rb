require "test_helper"

class CampusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campu = campus(:one)
  end

  test "should get index" do
    get campus_url
    assert_response :success
  end

  test "should get new" do
    get new_campu_url
    assert_response :success
  end

  test "should create campu" do
    assert_difference("Campu.count") do
      post campus_url, params: { campu: { adress: @campu.adress, cep: @campu.cep, city: @campu.city, deactivationDate: @campu.deactivationDate, description: @campu.description, neighbourhood: @campu.neighbourhood, number: @campu.number } }
    end

    assert_redirected_to campu_url(Campu.last)
  end

  test "should show campu" do
    get campu_url(@campu)
    assert_response :success
  end

  test "should get edit" do
    get edit_campu_url(@campu)
    assert_response :success
  end

  test "should update campu" do
    patch campu_url(@campu), params: { campu: { adress: @campu.adress, cep: @campu.cep, city: @campu.city, deactivationDate: @campu.deactivationDate, description: @campu.description, neighbourhood: @campu.neighbourhood, number: @campu.number } }
    assert_redirected_to campu_url(@campu)
  end

  test "should destroy campu" do
    assert_difference("Campu.count", -1) do
      delete campu_url(@campu)
    end

    assert_redirected_to campus_url
  end
end
