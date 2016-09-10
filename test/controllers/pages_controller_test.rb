require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get productos" do
    get :productos
    assert_response :success
  end

  test "should get operacion" do
    get :operacion
    assert_response :success
  end

end
