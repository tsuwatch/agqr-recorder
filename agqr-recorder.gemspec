# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'agqr/recorder/version'

Gem::Specification.new do |spec|
  spec.name          = "agqr-recorder"
  spec.version       = Agqr::VERSION
  spec.authors       = ["Tomohiro Suwa（tsuwatch）"]
  spec.email         = ["neoen.gsn@gmail.com"]
  spec.summary       = %q{Agqr::Recorder can record a program of agqr.}
  spec.description   = %q{This specify the date and time in the cron format.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "chrono"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
