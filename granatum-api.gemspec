# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'granatum/api/version'

Gem::Specification.new do |spec|
  spec.name          = "granatum-api"
  spec.version       = Granatum::Api::VERSION
  spec.authors       = ["Sanderson Santana"]
  spec.email         = ["sanderson@digaeita.com.br"]

  spec.summary       = 'Cliente ruby para integração com a API do Granatum. ( http://granatum.com.br)'
  spec.description   = 'Cliente ruby para integração com a API do Granatum. Maiores informações http://www.granatum.com.br/financeiro/api/'
  spec.homepage      = "http://github.com/eita/grantum-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|gem)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activeresource'
  spec.add_runtime_dependency 'activesupport'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "httplog"
end
