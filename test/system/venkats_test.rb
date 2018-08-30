require "application_system_test_case"

class VenkatsTest < ApplicationSystemTestCase
  setup do
    @venkat = venkats(:one)
  end

  test "visiting the index" do
    visit venkats_url
    assert_selector "h1", text: "Venkats"
  end

  test "creating a Venkat" do
    visit venkats_url
    click_on "New Venkat"

    fill_in "City", with: @venkat.city
    fill_in "Country", with: @venkat.country
    fill_in "Email", with: @venkat.email
    fill_in "Name", with: @venkat.name
    click_on "Create Venkat"

    assert_text "Venkat was successfully created"
    click_on "Back"
  end

  test "updating a Venkat" do
    visit venkats_url
    click_on "Edit", match: :first

    fill_in "City", with: @venkat.city
    fill_in "Country", with: @venkat.country
    fill_in "Email", with: @venkat.email
    fill_in "Name", with: @venkat.name
    click_on "Update Venkat"

    assert_text "Venkat was successfully updated"
    click_on "Back"
  end

  test "destroying a Venkat" do
    visit venkats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venkat was successfully destroyed"
  end
end
