require_relative 'lib/beer_project/version'

Gem::Specification.new do |spec|
  spec.name          = "beer_project"
  spec.version       = BeerProject::VERSION
  spec.authors       = ["Milan Zivkovic"]
  spec.email         = ["zivkovicmilan1987@gmail.com"]

  spec.summary       = "beer_project GEM"
  spec.description   = "beer_project GEM"
  spec.homepage      = "https://github.com/zicna/beer_project"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/zicna/beer_project"

  spec.metadata["homepage_uri"] = "https://github.com/zicna/beer_project"
  spec.metadata["source_code_uri"] = "https://github.com/zicna/beer_project"
  spec.metadata["changelog_uri"] = "https://github.com/zicna/beer_project"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "httparty"
  
end
