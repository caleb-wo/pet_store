require "application_system_test_case"

class CatsTest < ApplicationSystemTestCase
  setup do
    @cat = cats(:one)
  end

  test "visiting the index" do
    visit cats_url
    assert_selector "h1", text: "Cats"
  end

  test "should create cat" do
    visit cats_url
    click_on "New cat"

    fill_in "Age", with: @cat.age
    fill_in "Breed", with: @cat.breed
    fill_in "Description", with: @cat.description
    fill_in "Image url", with: @cat.image_url
    fill_in "Name", with: @cat.name
    fill_in "Price", with: @cat.price
    click_on "Create Cat"

    assert_text "Cat was successfully created"
    click_on "Back"
  end

  test "should update Cat" do
    visit cat_url(@cat)
    click_on "Edit this cat", match: :first

    fill_in "Age", with: @cat.age
    fill_in "Breed", with: @cat.breed
    fill_in "Description", with: @cat.description
    fill_in "Image url", with: @cat.image_url
    fill_in "Name", with: @cat.name
    fill_in "Price", with: @cat.price
    click_on "Update Cat"

    assert_text "Cat was successfully updated"
    click_on "Back"
  end

  test "should destroy Cat" do
    visit cat_url(@cat)
    click_on "Destroy this cat", match: :first

    assert_text "Cat was successfully destroyed"
  end
end
