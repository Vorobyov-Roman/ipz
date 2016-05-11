require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "display all" do
    p User.all
  end
end
