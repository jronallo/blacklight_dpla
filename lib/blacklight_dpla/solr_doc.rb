module BlacklightDpla
  class SolrDoc
    
    def self.index_docs_from_response(response)
      response['docs'].each do |doc|
        solr_doc = BlacklightDpla::SolrDoc.from_response_doc doc
        pp solr_doc
        pp Blacklight.solr.add solr_doc
      end
      pp Blacklight.solr.commit
    end
    
    def self.from_response_doc(doc)
      solr_doc = {}
      doc.keys.each do |key|
        if SOLR_MAPPING.keys.include? key
          case key
          when 'audio_format_mp3'
            m3u = HTTParty.get(doc[key])
            mp3 = m3u.split.first
            solr_doc[SOLR_MAPPING[key]] = mp3
            solr_doc['format'] = 'mp3'
          else
            solr_doc[SOLR_MAPPING[key]] = doc[key]
          end
        end
      end
      solr_doc
    end
    
  end
end