require 'test_helper'

class UploadControllerTest < ActionDispatch::IntegrationTest
  test "should get uploadFile" do
    get upload_uploadFile_url
    assert_response :success
  end

end
