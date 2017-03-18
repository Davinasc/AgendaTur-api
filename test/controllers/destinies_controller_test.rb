require 'test_helper'

class DestiniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destiny = destinies(:one)
  end

  test "should get index" do
    get destinies_url, as: :json
    assert_response :success
  end

  test "should create destiny" do
    assert_difference('Destiny.count') do
      post destinies_url, params: { destiny: { fixed_value: @destiny.fixed_value, name: @destiny.name } }, as: :json
    end

    assert_response 201
  end

  test "should show destiny" do
    get destiny_url(@destiny), as: :json
    assert_response :success
  end

  test "should update destiny" do
    patch destiny_url(@destiny), params: { destiny: { fixed_value: @destiny.fixed_value, name: @destiny.name } }, as: :json
    assert_response 200
  end

  test "should destroy destiny" do
    assert_difference('Destiny.count', -1) do
      delete destiny_url(@destiny), as: :json
    end

    assert_response 204
  end
end
