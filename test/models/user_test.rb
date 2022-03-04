require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "#full_name should return first and last name capitalized" do
    user = User.new(first_name: "john", last_name: "rambo")

    assert_equal "John Rambo", user.full_name
  end

  test "#full_name should return capitalized first name only if no last name" do
    user = User.new(first_name: "john")

    assert_equal "John", user.full_name
  end
end
