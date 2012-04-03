require 'test_helper'

class BlacklightDplaApiTest < ActiveSupport::TestCase
  
  setup do
    @api = BlacklightDpla::Api.new
  end
  
  test "get API response" do
    response = @api.simple_search('internet', 0, 1)
    assert response
  end
  
  test "limit set correctly" do
    response = @api.simple_search('internet', 0, 3)
    assert_equal '3', response['limit']
  end
  
  test 'documents returned equals limit set' do
    response = @api.simple_search('internet', 0, 2)
    assert_equal 2, response['docs'].length
  end
  
  test 'start set correctly' do
    response = @api.simple_search('internet', 5, 1)
    assert_equal '5', response['start']
  end
  
end
