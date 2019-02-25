require 'test_helper'

class PilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pil = pils(:one)
  end

  test "should get index" do
    get pils_url
    assert_response :success
  end

  test "should get new" do
    get new_pil_url
    assert_response :success
  end

  test "should create pil" do
    assert_difference('Pil.count') do
      post pils_url, params: { pil: { firstname: @pil.firstname, lastname: @pil.lastname, middlename: @pil.middlename } }
    end

    assert_redirected_to pil_url(Pil.last)
  end

  test "should show pil" do
    get pil_url(@pil)
    assert_response :success
  end

  test "should get edit" do
    get edit_pil_url(@pil)
    assert_response :success
  end

  test "should update pil" do
    patch pil_url(@pil), params: { pil: { firstname: @pil.firstname, lastname: @pil.lastname, middlename: @pil.middlename } }
    assert_redirected_to pil_url(@pil)
  end

  test "should destroy pil" do
    assert_difference('Pil.count', -1) do
      delete pil_url(@pil)
    end

    assert_redirected_to pils_url
  end
end
