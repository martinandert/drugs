# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "drugs/version"

Gem::Specification.new do |spec|
  spec.name          = "drugs"
  spec.version       = Drugs::VERSION
  spec.authors       = ["Martin Andert"]
  spec.email         = ["mandert@gmail.com"]

  spec.summary       = "A list of pharmaceuticals."
  spec.description   = "A list of pharmaceuticals – useful for fighting contact form spam etc."
  spec.homepage      = "https://github.com/martinandert/drugs#readme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test/|spec/|features/|\.gitignore|\.npmignore|Makefile|Rakefile|index\.js|package\.json)})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
