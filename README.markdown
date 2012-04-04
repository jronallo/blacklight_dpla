# Blacklight DPLA

A quick start to a Blacklight application using some of the content from
the DPLA Platform.

# Usage

1. Follow the [Blacklight Quickstart guide](https://github.com/projectblacklight/blacklight/wiki/Quickstart)
  up through step 5 (installing Solr under jetty).
2. Update your Blacklight application's Gemfile with `gem 'blacklight_dpla'` 
  and `bundle install`
3. Run the generator `rails g blacklight_dpla`
4. In a new terminal, start Solr `cd jetty && java -jar start.jar`
5. Index some data using the rake task `rake dpla:load_query["internet"]`. In
  place of "internet" you can enter any keyword query.
6. Start your new Blacklight-powered DPLA application `rails s` and visit the
  address it is started on (usually http://localhost:3000).

The indexing rake task can be run multiple times to pull in other data to you 
Blacklight app.


# What the generator does

When you run `rails g blacklight_dpla` it does the following:

1. Updates `app/controllers/catalog_controller.rb` with configuration for 
  appropriate facets, show view values, and field list.
2. Updates the Solr configuration so that all *_facet fields are stored by default.
3. TODO: Updates `app/views/catalog/_home_text.html.erb` with help text.

# Author

Jason Ronallo

# Copyright

Copyright © 2012 North Carolina State University. See MIT-LICENSE for details.