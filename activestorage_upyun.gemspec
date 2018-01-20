$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "activestorage_upyun/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activestorage_upyun"
  s.version     = ActivestorageUpyun::VERSION
  s.authors     = ["doabit"]
  s.email       = ["doinsist@gmail.com"]
  s.homepage    = "https://github.com/doabit/activestorage_upyun"
  s.summary     = "Upyun service for activestorage"
  s.description = "Upyun service for activestorage"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'activestorage'
  s.add_dependency 'upyun', '~> 1.0.8'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake"
end
