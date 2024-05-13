require "test_helper"

class PoulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poule = poules(:one)
  end

  test "should get index" do
    get poules_url
    assert_response :success
  end

  test "should get new" do
    get new_poule_url
    assert_response :success
  end

  test "should create poule" do
    assert_difference("Poule.count") do
      post poules_url, params: { poule: { equipe_1: @poule.equipe_1, equipe_2: @poule.equipe_2, equipe_3: @poule.equipe_3, equipe_4: @poule.equipe_4 } }
    end

    assert_redirected_to poule_url(Poule.last)
  end

  test "should show poule" do
    get poule_url(@poule)
    assert_response :success
  end

  test "should get edit" do
    get edit_poule_url(@poule)
    assert_response :success
  end

  test "should update poule" do
    patch poule_url(@poule), params: { poule: { equipe_1: @poule.equipe_1, equipe_2: @poule.equipe_2, equipe_3: @poule.equipe_3, equipe_4: @poule.equipe_4 } }
    assert_redirected_to poule_url(@poule)
  end

  test "should destroy poule" do
    assert_difference("Poule.count", -1) do
      delete poule_url(@poule)
    end

    assert_redirected_to poules_url
  end
end
