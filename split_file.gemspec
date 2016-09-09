# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'split_file/version'

Gem::Specification.new do |spec|
  spec.name          = "split_file"
  spec.version       = SplitFile::VERSION
  spec.authors       = ["Atsushi Ishida"]
  spec.email         = ["gipcompany@gmail.com"]

  spec.summary       = %q{Split a File into Multiple Files of a given Size}
  spec.description   = %q{Split a File into Multiple Files of a given Size}
  spec.homepage      = "https://github.com/gipcompany/split_file"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
