$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "spud_search/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "spud_search"
  s.version     = Spud::Search::VERSION
  s.authors     = ["David Estes"]
  s.email       = ["destes@redwindsw.com"]
  s.homepage    = "http://github.com/spud-rails/spud_search"
  s.summary     = "Acts as indexed adapter for spud core for quick searches of pages and blogs"
  s.description = "Spud Search is a base search interface for use on spud core"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency 'spud_core', ">= 0.9.10"
  s.add_dependency 'acts_as_indexed', ">= 0.7.7"

  s.add_development_dependency 'mysql2', '0.3.11'
  s.add_development_dependency 'rspec', '2.8.0'
  s.add_development_dependency 'rspec-rails', '2.8.1'
  s.add_development_dependency 'shoulda', '~> 3.0.1'
  s.add_development_dependency 'factory_girl', '2.5.0'
  s.add_development_dependency 'mocha', '0.10.3'
  s.add_development_dependency 'database_cleaner', '0.7.1'
  s.add_development_dependency 'simplecov', '~> 0.6.4'
end
