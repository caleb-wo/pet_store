require "test_helper"

class CatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat = cats(:one)
  end

  test "should get index" do
    get cats_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_url
    assert_response :success
  end

  test "should create cat" do
    assert_difference("Cat.count") do
      post cats_url, params: { cat: { age: @cat.age, breed: @cat.breed, description: @cat.description, image_url: @cat.image_url, name: @cat.name, price: @cat.price } }
    end

    assert_redirected_to cat_url(Cat.last)
  end

  test "should show cat" do
    get cat_url(@cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_url(@cat)
    assert_response :success
  end

  test "should update cat" do
    patch cat_url(@cat), params: { cat: { age: @cat.age, breed: @cat.breed, description: @cat.description, image_url: @cat.image_url, name: @cat.name, price: @cat.price } }
    assert_redirected_to cat_url(@cat)
  end

  test "should destroy cat" do
    assert_difference("Cat.count", -1) do
      delete cat_url(@cat)
    end

    assert_redirected_to cats_url
  end
end
