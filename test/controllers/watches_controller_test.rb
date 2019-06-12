require 'test_helper'

class WatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch = watches(:one)
  end

  test "should get index" do
    get watches_url
    assert_response :success
  end

  test "should get new" do
    get new_watch_url
    assert_response :success
  end

  test "should create watch" do
    assert_difference('Watch.count') do
      post watches_url, params: { watch: { brand: @watch.brand, buckle: @watch.buckle, case_diameter: @watch.case_diameter, case_height: @watch.case_height, case_material: @watch.case_material, collection: @watch.collection, description: @watch.description, dial_color: @watch.dial_color, glass: @watch.glass, lug_width: @watch.lug_width, movement: @watch.movement, numerals: @watch.numerals, reference: @watch.reference, retail_price: @watch.retail_price, strap: @watch.strap, url: @watch.url, water_resistance: @watch.water_resistance, year: @watch.year } }
    end

    assert_redirected_to watch_url(Watch.last)
  end

  test "should show watch" do
    get watch_url(@watch)
    assert_response :success
  end

  test "should get edit" do
    get edit_watch_url(@watch)
    assert_response :success
  end

  test "should update watch" do
    patch watch_url(@watch), params: { watch: { brand: @watch.brand, buckle: @watch.buckle, case_diameter: @watch.case_diameter, case_height: @watch.case_height, case_material: @watch.case_material, collection: @watch.collection, description: @watch.description, dial_color: @watch.dial_color, glass: @watch.glass, lug_width: @watch.lug_width, movement: @watch.movement, numerals: @watch.numerals, reference: @watch.reference, retail_price: @watch.retail_price, strap: @watch.strap, url: @watch.url, water_resistance: @watch.water_resistance, year: @watch.year } }
    assert_redirected_to watch_url(@watch)
  end

  test "should destroy watch" do
    assert_difference('Watch.count', -1) do
      delete watch_url(@watch)
    end

    assert_redirected_to watches_url
  end
end
