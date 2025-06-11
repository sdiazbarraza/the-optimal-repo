require "application_system_test_case"

class PoroyectsTest < ApplicationSystemTestCase
  setup do
    @poroyect = poroyects(:one)
  end

  test "visiting the index" do
    visit poroyects_url
    assert_selector "h1", text: "Poroyects"
  end

  test "should create poroyect" do
    visit poroyects_url
    click_on "New poroyect"

    fill_in "Name", with: @poroyect.name
    click_on "Create Poroyect"

    assert_text "Poroyect was successfully created"
    click_on "Back"
  end

  test "should update Poroyect" do
    visit poroyect_url(@poroyect)
    click_on "Edit this poroyect", match: :first

    fill_in "Name", with: @poroyect.name
    click_on "Update Poroyect"

    assert_text "Poroyect was successfully updated"
    click_on "Back"
  end

  test "should destroy Poroyect" do
    visit poroyect_url(@poroyect)
    click_on "Destroy this poroyect", match: :first

    assert_text "Poroyect was successfully destroyed"
  end
end
