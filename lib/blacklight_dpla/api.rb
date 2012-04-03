module BlacklightDpla
  class Api
    include HTTParty
    base_uri 'api.dp.la'
    
    def simple_search(keyword, start = 0, limit = 25)
      options = {:query => 
        {:search_type => 'keyword', :query => keyword,
        :limit => limit, :start => start}
      }
      response = self.class.get('/dev/item/', options)
      JSON.parse(response.body)
    end
  end
end