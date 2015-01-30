# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'average_temperature/version'

Gem::Specification.new do |spec|
  spec.name          = "average_temperature"
  spec.version       = AverageTemperature::VERSION
  spec.authors       = ["Glenn Waters"]
  spec.email         = ["gwwaters@gmail.com"]
  spec.summary       = %q{Gem to get average temperatures for US states.}
  spec.description   = %q{Gem to get average temperatures for US states.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
