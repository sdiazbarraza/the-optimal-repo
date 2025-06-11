require "test_helper"

class PoroyectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poroyect = poroyects(:one)
  end

  test "should get index" do
    get poroyects_url
    assert_response :success
  end

  test "should get new" do
    get new_poroyect_url
    assert_response :success
  end

  test "should create poroyect" do
    assert_difference("Poroyect.count") do
      post poroyects_url, params: { poroyect: { name: @poroyect.name } }
    end

    assert_redirected_to poroyect_url(Poroyect.last)
  end

  test "should show poroyect" do
    get poroyect_url(@poroyect)
    assert_response :success
  end

  test "should get edit" do
    get edit_poroyect_url(@poroyect)
    assert_response :success
  end

  test "should update poroyect" do
    patch poroyect_url(@poroyect), params: { poroyect: { name: @poroyect.name } }
    assert_redirected_to poroyect_url(@poroyect)
  end

  test "should destroy poroyect" do
    assert_difference("Poroyect.count", -1) do
      delete poroyect_url(@poroyect)
    end

    assert_redirected_to poroyects_url
  end
end
