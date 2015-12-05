# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/good_night/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-good-night"
  spec.version       = Ruboty::GoodNight::VERSION
  spec.authors       = ["adorechic"]
  spec.email         = ["adorechic@gmail.com"]

  spec.summary       = %q{Say good night to ruboty.}
  spec.description   = %q{Ruboty says good night when ruboty goes to bed.}
  spec.homepage      = "https://github.com/adorechic/ruboty-good-night"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
