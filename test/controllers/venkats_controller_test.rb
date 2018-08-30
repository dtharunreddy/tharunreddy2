require 'test_helper'

class VenkatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venkat = venkats(:one)
  end

  test "should get index" do
    get venkats_url
    assert_response :success
  end

  test "should get new" do
    get new_venkat_url
    assert_response :success
  end

  test "should create venkat" do
    assert_difference('Venkat.count') do
      post venkats_url, params: { venkat: { city: @venkat.city, country: @venkat.country, email: @venkat.email, name: @venkat.name } }
    end

    assert_redirected_to venkat_url(Venkat.last)
  end

  test "should show venkat" do
    get venkat_url(@venkat)
    assert_response :success
  end

  test "should get edit" do
    get edit_venkat_url(@venkat)
    assert_response :success
  end

  test "should update venkat" do
    patch venkat_url(@venkat), params: { venkat: { city: @venkat.city, country: @venkat.country, email: @venkat.email, name: @venkat.name } }
    assert_redirected_to venkat_url(@venkat)
  end

  test "should destroy venkat" do
    assert_difference('Venkat.count', -1) do
      delete venkat_url(@venkat)
    end

    assert_redirected_to venkats_url
  end
end
