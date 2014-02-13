require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
        image_url:        'something.jpg',
        item:             'Chairs',
        specifications:   'Lorem ipsum',
        wood_used:        'Lorem',
        price:            9.99
            }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { designer: @product.designer, image_url: @product.image_url, item: @product.item, price: @product.price, specifications: @product.specifications, wood_used: @product.wood_used }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { designer: @product.designer, image_url: @product.image_url, item: @product.item, price: @product.price, specifications: @product.specifications, wood_used: @product.wood_used }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
