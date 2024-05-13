require "application_system_test_case"

class PoulesTest < ApplicationSystemTestCase
  setup do
    @poule = poules(:one)
  end

  test "visiting the index" do
    visit poules_url
    assert_selector "h1", text: "Poules"
  end

  test "should create poule" do
    visit poules_url
    click_on "New poule"

    fill_in "Equipe 1", with: @poule.equipe_1
    fill_in "Equipe 2", with: @poule.equipe_2
    fill_in "Equipe 3", with: @poule.equipe_3
    fill_in "Equipe 4", with: @poule.equipe_4
    click_on "Create Poule"

    assert_text "Poule was successfully created"
    click_on "Back"
  end

  test "should update Poule" do
    visit poule_url(@poule)
    click_on "Edit this poule", match: :first

    fill_in "Equipe 1", with: @poule.equipe_1
    fill_in "Equipe 2", with: @poule.equipe_2
    fill_in "Equipe 3", with: @poule.equipe_3
    fill_in "Equipe 4", with: @poule.equipe_4
    click_on "Update Poule"

    assert_text "Poule was successfully updated"
    click_on "Back"
  end

  test "should destroy Poule" do
    visit poule_url(@poule)
    click_on "Destroy this poule", match: :first

    assert_text "Poule was successfully destroyed"
  end
end
