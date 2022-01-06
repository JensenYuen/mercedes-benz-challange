require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'homepage exist' do
    get root_path
    assert_response :success
  end

  test 'params should include longitude and latitude' do
    get pages_search_path,
        params: { latitude: 52.494857, longitude: 13.437641 }
    assert_response :success
  end

  test 'params left blank' do
    get pages_search_path,
        params: { latitude: '', longitude: '' }
    assert_redirected_to root_path
  end

  test 'params include letters' do
    get pages_search_path,
        params: { latitude: '12.564', longitude: 'qwec.12e' }
    assert_redirected_to root_path
  end
end
