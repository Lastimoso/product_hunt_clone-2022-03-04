require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit products_url
  #
  #   assert_selector "h1", text: "Product"
  # end

  test "visiting the home" do
    visit root_url

    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "creating a product" do
    # setup
    login_as users(:homer)

    # exericise
    visit "products/new"

    fill_in "product_tagline", with: "La mejor de la ciudad"

    click_on "Create Product"

    assert_text "Name can't be blank"

    fill_in "product_name",  with: "Empanada loca"

    click_on "Create Product"
    # assert / verify

    assert_equal root_path, page.current_path
    assert_text "La mejor de la ciudad"

    # teardown
  end
end
