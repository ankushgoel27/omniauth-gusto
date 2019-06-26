
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-gusto/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-gusto"
  spec.version       = OmniauthGusto::VERSION
  spec.authors       = ["juliannaroen","lisasli"]
  spec.email         = ["julianna.roen@gusto.com","lisa.li@gusto.com"]

  spec.summary       = %q{Official OmniAuth strategy for Gusto}
  spec.description   = %q{Official OmniAuth strategy for Gusto}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~> 1.9"
  spec.add_dependency "omniauth-oauth2", "~> 1.6"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
end