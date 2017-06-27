# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrier_wave_base64_uploader/version'

Gem::Specification.new do |spec|
  spec.name          = "carrier_wave_base64_uploader"
  spec.version       = CarrierWaveBase64Uploader::VERSION
  spec.authors       = ["Noah Settersten"]
  spec.email         = ["noah@headway.io"]

  spec.summary       = %q{Base 64 Uploader for Carrierwave}
  spec.description   = spec.summary
  spec.homepage      = "https://.com/headwayio/carrier_wave_base64_uploader"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "carrierwave", "~> 1.1"
end
