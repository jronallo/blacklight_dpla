# desc "Explaining what the task does"
# task :blacklight_dpla do
#   # Task goes here
# end
require 'pp'
namespace :dpla do
  desc 'load DPLA records from query'
  task :load_query, [:query] => [:environment] do |t, args|
    query_term = args[:query]
    # determine how many matches there are
    response = BlacklightDpla::Api.new.simple_search(query_term, 0, 0)
    puts response['num_found']
    # how many batches of 100 do we need to retrieve?
    num_times = (response['num_found'] / 100.0).ceil
    # interate over batches of 100 and index them
    num_times.times do |i|
      start = i * 100
      response = BlacklightDpla::Api.new.simple_search(query_term, start, 100)
      BlacklightDpla::SolrDoc.index_docs_from_response(response)
    end    
  end
end