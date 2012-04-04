class BlacklightDplaGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  desc "Blacklight DPLA Generator"
  
  def update_blacklight_config_facets
    blacklight_dpla_config = File.read(File.expand_path("../templates/blacklight_dpla_config.rb", __FILE__))
    insert_into_file 'app/controllers/catalog_controller.rb', blacklight_dpla_config, 
      :after => "configure_blacklight do |config|\n"
  end
  
  def update_blacklight_config_default_solr_params
    insert_into_file 'app/controllers/catalog_controller.rb', %Q{\n      :fl => '*', # blacklight_dpla generated code},
      :after => "config.default_solr_params = {"
  end
  
  def update_solr_dynamic_facets_config
    gsub_file 'jetty/solr/conf/schema.xml', '<dynamicField name="*_facet" type="string" indexed="true" stored="false" multiValued="true" />',
      '<dynamicField name="*_facet" type="string" indexed="true" stored="true" multiValued="true" />'
  end
  
end