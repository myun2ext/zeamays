# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zeamays/version'

Gem::Specification.new do |spec|
  spec.name          = "zeamays"
  spec.version       = Zeamays::VERSION
  spec.authors       = ["myun2"]
  spec.email         = ["myun2@nwhite.info"]
  spec.summary       = %q{Simple Persistation Any Data for Ruby.}
  spec.description   = %q{Simple Persistation Any Data for Ruby.}
  spec.homepage      = "https://github.com/myun2ext/zeamays"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
