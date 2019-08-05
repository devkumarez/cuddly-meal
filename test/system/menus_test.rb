require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "creating a Menu" do
    visit menus_url
    click_on "New Menu"

    fill_in "Available", with: @menu.available
    fill_in "Category", with: @menu.category
    fill_in "Description", with: @menu.description
    fill_in "Food type", with: @menu.food_type
    fill_in "Items", with: @menu.items
    fill_in "Name", with: @menu.name
    fill_in "Price", with: @menu.price
    check "Status" if @menu.status
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "updating a Menu" do
    visit menus_url
    click_on "Edit", match: :first

    fill_in "Available", with: @menu.available
    fill_in "Category", with: @menu.category
    fill_in "Description", with: @menu.description
    fill_in "Food type", with: @menu.food_type
    fill_in "Items", with: @menu.items
    fill_in "Name", with: @menu.name
    fill_in "Price", with: @menu.price
    check "Status" if @menu.status
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu" do
    visit menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu was successfully destroyed"
  end
end
