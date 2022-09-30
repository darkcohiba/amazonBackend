require "test_helper"

class ManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manufacturer = manufacturers(:one)
  end

  test "should get index" do
    get manufacturers_url, as: :json
    assert_response :success
  end

  test "should create manufacturer" do
    assert_difference("Manufacturer.count") do
      post manufacturers_url, params: { manufacturer: { description: @manufacturer.description, name: @manufacturer.name } }, as: :json
    end

    assert_response :created
  end

  test "should show manufacturer" do
    get manufacturer_url(@manufacturer), as: :json
    assert_response :success
  end

  test "should update manufacturer" do
    patch manufacturer_url(@manufacturer), params: { manufacturer: { description: @manufacturer.description, name: @manufacturer.name } }, as: :json
    assert_response :success
  end

  test "should destroy manufacturer" do
    assert_difference("Manufacturer.count", -1) do
      delete manufacturer_url(@manufacturer), as: :json
    end

    assert_response :no_content
  end
end
