# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_form/enhanced/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_form-enhanced"
  spec.version       = SimpleForm::Enhanced::VERSION
  spec.authors       = ["Wolfgang Uhl"]
  spec.email         = ["wolfgang.uhl@googlemail.com"]
  spec.description   = %q{Simple Form Enhanced: Write a gem description}
  spec.summary       = %q{Simple Form Enhanced: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "simple_form", "3.0.0rc"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
