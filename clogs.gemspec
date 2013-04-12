$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "clogs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "clogs"
  s.version     = Clogs::VERSION
  s.authors     = ["Your name"]
  s.email       = ["Your email"]
  s.summary     = "Summary of Clogs."
  s.description = "Description of Clogs."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_development_dependency "sqlite3"
end
