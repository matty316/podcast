$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "podcasts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "podcasts"
  s.version     = Podcasts::VERSION
  s.authors     = ["Matt Reed"]
  s.email       = ["matt.reed@spothero.com"]
  s.homepage    = "https://matthewthomasreed.com/podcasts"
  s.summary     = "Rails engine for adding podcasts to your Rails app"
  s.description = "Rails engine for adding podcasts to your Rails app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
