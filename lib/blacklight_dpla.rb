require 'httparty'
module BlacklightDpla
  class Engine < Rails::Engine
    
  end
  
  SOLR_MAPPING = {
    'subject' => :subject_topic_facet,
    'data_source' => :data_source_facet,
    'format' => :format,
    'date' => :date_facet,
    'creator' => :creator_facet,
    'id' => :id,
    'title' => :title_display,
    'language' => :language_facet,
    'checkouts' => :checkouts_facet,
    'content_link' => :content_link_display
  }
  
end

require 'blacklight_dpla/api'
require 'blacklight_dpla/solr_doc'
