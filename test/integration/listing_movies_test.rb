require 'test_helper'

class ListingMoviesTest < ActionDispatch::IntegrationTest
  setup { host! 'lvh.me:3000'} #need host! because api subdomain

  test 'returns list of all current playing movies'
    get '/movies'
    assert_equal 200, response.status
    refute_empty response.body
end
