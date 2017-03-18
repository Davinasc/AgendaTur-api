require 'test_helper'

class GuidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guide = guides(:one)
  end

  test "should get index" do
    get guides_url, as: :json
    assert_response :success
  end

  test "should create guide" do
    assert_difference('Guide.count') do
      post guides_url, params: { guide: { name: @guide.name, qualification: @guide.qualification } }, as: :json
    end

    assert_response 201
  end

  test "should show guide" do
    get guide_url(@guide), as: :json
    assert_response :success
  end

  test "should update guide" do
    patch guide_url(@guide), params: { guide: { name: @guide.name, qualification: @guide.qualification } }, as: :json
    assert_response 200
  end

  test "should destroy guide" do
    assert_difference('Guide.count', -1) do
      delete guide_url(@guide), as: :json
    end

    assert_response 204
  end
end
