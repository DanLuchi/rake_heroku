# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rake_heroku/version'

Gem::Specification.new do |spec|
  spec.name          = "rake_heroku"
  spec.version       = RakeHeroku::VERSION
  spec.authors       = ["Dan Luchi"]
  spec.email         = ["dluchi@gmail.com"]
  spec.description   = %q{A collection of useful scripts for interacting with heroku deployed rails applications.}
  spec.summary       = %q{A collection of useful scripts for interacting with heroku deployed rails applications.}
  spec.homepage      = "http://github.com/danluchi/rake_heroku"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
