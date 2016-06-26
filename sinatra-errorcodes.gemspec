# coding: utf-8
require File.expand_path('../lib/sinatra/errorcodes/version', __FILE__)

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

summary     = %q{ "Sinatra Extension of HTTP error status code pack" }
description = %q{ "sinatra-errorcodes is the sinatra extension that contains a pack of HTTP error status code and message" }
ignores     = %r{ ^(test|spec|features)/ }
homepage    = "https://github.com/IzumiSy/sinatra-errorcodes"

Gem::Specification.new do |spec|
  spec.name          = 'sinatra-errorcodes'
  spec.version       = Sinatra::Errorcodes::VERSION
  spec.authors       = ['IzumiSy']
  spec.email         = ['beetle-noise@gmx.com']

  spec.summary       = summary
  spec.description   = description
  spec.homepage      = homepage
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(ignores) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{ ^exe /}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sinatra'
  spec.add_dependency 'sinatra-contrib'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry'
end
