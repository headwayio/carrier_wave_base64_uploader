# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrier_wave_base64_uploader/version'

Gem::Specification.new do |spec|
  spec.name          = 'carrier_wave_base64_uploader'
  spec.version       = CarrierWaveBase64Uploader::VERSION
  spec.authors       = ['Noah Settersten']
  spec.email         = ['noah@headway.io']

  spec.summary       = 'Base 64 Uploader for CarrierWave'
  spec.description   = 'Mixin for CarrierWave uploaders to support Base64 data URLs for mobile APIs'
  spec.homepage      = 'https://github.com/headwayio/carrier_wave_base64_uploader'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1.0'
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'carrierwave', '~> 1.1'
  spec.add_dependency 'fog', '~> 1.4'
  spec.add_dependency 'rails', '~> 5'
end
