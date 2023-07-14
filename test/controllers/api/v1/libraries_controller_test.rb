require "test_helper"

class Api::V1::LibrariesControllerTest < ActionDispatch::IntegrationTest
    test 'should get library with books' do
    library = libraries(:one)
    get api_library_url(library), as: :json

    assert_response :success
    assert_equal library.id, response.parsed_body['library']['id']
    assert_equal library.books.count, response.parsed_body['books'].size
  end
end
