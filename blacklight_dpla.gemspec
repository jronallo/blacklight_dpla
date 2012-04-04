$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blacklight_dpla/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blacklight_dpla"
  s.version     = BlacklightDpla::VERSION
  s.authors     = ["Jason Ronallo"]
  s.email       = ["jronallo@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Quickstart to a Blacklight app using DPLA Platform data."
  s.description = "Quickstart to a Blacklight app using DPLA Platform data."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "httparty"

  s.add_development_dependency "sqlite3"
end
