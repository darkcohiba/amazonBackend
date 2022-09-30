require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url, as: :json
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { category_id: @product.category_id, color_id: @product.color_id, description: @product.description, inventory: @product.inventory, manufacturer_id: @product.manufacturer_id, name: @product.name, price: @product.price, seller_id: @product.seller_id, size_id: @product.size_id } }, as: :json
    end

    assert_response :created
  end

  test "should show product" do
    get product_url(@product), as: :json
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { category_id: @product.category_id, color_id: @product.color_id, description: @product.description, inventory: @product.inventory, manufacturer_id: @product.manufacturer_id, name: @product.name, price: @product.price, seller_id: @product.seller_id, size_id: @product.size_id } }, as: :json
    assert_response :success
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product), as: :json
    end

    assert_response :no_content
  end
end