require 'test_helper'

class CellarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cellar = cellars(:one)
  end

  test "should get index" do
    get cellars_url
    assert_response :success
  end

  test "should get new" do
    get new_cellar_url
    assert_response :success
  end

  test "should create cellar" do
    assert_difference('Cellar.count') do
      post cellars_url, params: { cellar: { beer: @cellar.beer, description: @cellar.description } }
    end

    assert_redirected_to cellar_url(Cellar.last)
  end

  test "should show cellar" do
    get cellar_url(@cellar)
    assert_response :success
  end

  test "should get edit" do
    get edit_cellar_url(@cellar)
    assert_response :success
  end

  test "should update cellar" do
    patch cellar_url(@cellar), params: { cellar: { beer: @cellar.beer, description: @cellar.description } }
    assert_redirected_to cellar_url(@cellar)
  end

  test "should destroy cellar" do
    assert_difference('Cellar.count', -1) do
      delete cellar_url(@cellar)
    end

    assert_redirected_to cellars_url
  end
end
