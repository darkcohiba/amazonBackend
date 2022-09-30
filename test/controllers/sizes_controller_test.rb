require "test_helper"

class SizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @size = sizes(:one)
  end

  test "should get index" do
    get sizes_url, as: :json
    assert_response :success
  end

  test "should create size" do
    assert_difference("Size.count") do
      post sizes_url, params: { size: { size_name: @size.size_name, size_number: @size.size_number } }, as: :json
    end

    assert_response :created
  end

  test "should show size" do
    get size_url(@size), as: :json
    assert_response :success
  end

  test "should update size" do
    patch size_url(@size), params: { size: { size_name: @size.size_name, size_number: @size.size_number } }, as: :json
    assert_response :success
  end

  test "should destroy size" do
    assert_difference("Size.count", -1) do
      delete size_url(@size), as: :json
    end

    assert_response :no_content
  end
end
