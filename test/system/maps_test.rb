require "application_system_test_case"

class MapsTest < ApplicationSystemTestCase
  setup do
    @map = maps(:one)
  end

  test "visiting the index" do
    visit maps_url
    assert_selector "h1", text: "Maps"
  end

  test "creating a Map" do
    visit maps_url
    click_on "New Map"

    fill_in "Latitude final", with: @map.latitude_final
    fill_in "Latitude inicial", with: @map.latitude_inicial
    fill_in "Longitude final", with: @map.longitude_final
    fill_in "Longitude inicial", with: @map.longitude_inicial
    fill_in "Nome trecho", with: @map.nome_trecho
    fill_in "Numero lei", with: @map.numero_lei
    click_on "Create Map"

    assert_text "Map was successfully created"
    click_on "Back"
  end

  test "updating a Map" do
    visit maps_url
    click_on "Edit", match: :first

    fill_in "Latitude final", with: @map.latitude_final
    fill_in "Latitude inicial", with: @map.latitude_inicial
    fill_in "Longitude final", with: @map.longitude_final
    fill_in "Longitude inicial", with: @map.longitude_inicial
    fill_in "Nome trecho", with: @map.nome_trecho
    fill_in "Numero lei", with: @map.numero_lei
    click_on "Update Map"

    assert_text "Map was successfully updated"
    click_on "Back"
  end

  test "destroying a Map" do
    visit maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Map was successfully destroyed"
  end
end
