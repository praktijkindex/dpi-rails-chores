# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dpi/rails_chores/version'

Gem::Specification.new do |spec|
  spec.name          = "dpi-rails-chores"
  spec.version       = Dpi::RailsChores::VERSION
  spec.authors       = ["Artem Baguinski"]
  spec.email         = ["abaguinski@depraktijkindex.nl"]
  spec.summary       = %q{Common rails chores}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/praktijkindex/dpi-rails-chores"
  spec.license       = "Proprietary"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 3.2.19"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
