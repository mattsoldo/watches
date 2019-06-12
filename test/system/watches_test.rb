require "application_system_test_case"

class WatchesTest < ApplicationSystemTestCase
  setup do
    @watch = watches(:one)
  end

  test "visiting the index" do
    visit watches_url
    assert_selector "h1", text: "Watches"
  end

  test "creating a Watch" do
    visit watches_url
    click_on "New Watch"

    fill_in "Brand", with: @watch.brand
    fill_in "Buckle", with: @watch.buckle
    fill_in "Case diameter", with: @watch.case_diameter
    fill_in "Case height", with: @watch.case_height
    fill_in "Case material", with: @watch.case_material
    fill_in "Collection", with: @watch.collection
    fill_in "Description", with: @watch.description
    fill_in "Dial color", with: @watch.dial_color
    fill_in "Glass", with: @watch.glass
    fill_in "Lug width", with: @watch.lug_width
    fill_in "Movement", with: @watch.movement
    fill_in "Numerals", with: @watch.numerals
    fill_in "Reference", with: @watch.reference
    fill_in "Retail price", with: @watch.retail_price
    fill_in "Strap", with: @watch.strap
    fill_in "Url", with: @watch.url
    fill_in "Water resistance", with: @watch.water_resistance
    fill_in "Year", with: @watch.year
    click_on "Create Watch"

    assert_text "Watch was successfully created"
    click_on "Back"
  end

  test "updating a Watch" do
    visit watches_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @watch.brand
    fill_in "Buckle", with: @watch.buckle
    fill_in "Case diameter", with: @watch.case_diameter
    fill_in "Case height", with: @watch.case_height
    fill_in "Case material", with: @watch.case_material
    fill_in "Collection", with: @watch.collection
    fill_in "Description", with: @watch.description
    fill_in "Dial color", with: @watch.dial_color
    fill_in "Glass", with: @watch.glass
    fill_in "Lug width", with: @watch.lug_width
    fill_in "Movement", with: @watch.movement
    fill_in "Numerals", with: @watch.numerals
    fill_in "Reference", with: @watch.reference
    fill_in "Retail price", with: @watch.retail_price
    fill_in "Strap", with: @watch.strap
    fill_in "Url", with: @watch.url
    fill_in "Water resistance", with: @watch.water_resistance
    fill_in "Year", with: @watch.year
    click_on "Update Watch"

    assert_text "Watch was successfully updated"
    click_on "Back"
  end

  test "destroying a Watch" do
    visit watches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watch was successfully destroyed"
  end
end
