require 'test_helper'

class PropertyViewingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get property_viewings_show_url
    assert_response :success
  end

end
