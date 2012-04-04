
    ## blacklight_dpla generated code BEGIN
    config.add_facet_field 'subject_facet', :label => 'Subject', :limit => 10
    config.add_facet_field 'creator_facet', :label => 'Creator', :limit => 10
    config.add_facet_field 'date_facet', :label => 'Date', :limit => 10
    config.add_facet_field 'checkouts_facet', :label => 'Checkouts', :limit => 10
    config.add_facet_field 'data_source_facet', :label => 'Data Source', :limit => 10
    
    config.add_show_field 'content_link_display', :label => 'Content Link:'
    config.add_show_field 'data_source_facet', :label => 'Data Source:'
    config.add_show_field 'date_facet', :label => 'Date:'
    config.add_show_field 'creator_facet', :label => 'Creator:'
    config.add_show_field 'checkouts_facet', :label => 'Checkouts:'
    ## blacklight_dpla generated code END
    