require "test_helper"

class UffCampusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uff_campu = uff_campus(:one)
  end

  test "should get index" do
    get uff_campus_index_url
    assert_response :success
  end

  test "should get new" do
    get new_uff_campu_url
    assert_response :success
  end

  test "should create uff_campu" do
    assert_difference("UffCampus.count") do
      post uff_campus_index_url, params: { uff_campu: { adress: @uff_campu.adress, cep: @uff_campu.cep, city: @uff_campu.city, deactivationDate: @uff_campu.deactivationDate, description: @uff_campu.description, neighbourhood: @uff_campu.neighbourhood, number: @uff_campu.number } }
    end

    assert_redirected_to uff_campu_url(UffCampus.last)
  end

  test "should show uff_campu" do
    get uff_campu_url(@uff_campu)
    assert_response :success
  end

  test "should get edit" do
    get edit_uff_campu_url(@uff_campu)
    assert_response :success
  end

  test "should update uff_campu" do
    patch uff_campu_url(@uff_campu), params: { uff_campu: { adress: @uff_campu.adress, cep: @uff_campu.cep, city: @uff_campu.city, deactivationDate: @uff_campu.deactivationDate, description: @uff_campu.description, neighbourhood: @uff_campu.neighbourhood, number: @uff_campu.number } }
    assert_redirected_to uff_campu_url(@uff_campu)
  end

  test "should destroy uff_campu" do
    assert_difference("UffCampus.count", -1) do
      delete uff_campu_url(@uff_campu)
    end

    assert_redirected_to uff_campus_index_url
  end
end
