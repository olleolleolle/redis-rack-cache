# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'redis-rack-cache/version'

Gem::Specification.new do |s|
  s.name        = 'redis-rack-cache'
  s.version     = Redis::Rack::Cache::VERSION
  s.authors     = ['Luca Guidi']
  s.email       = ['me@lucaguidi.com']
  s.homepage    = 'http://redis-store.org/redis-rack-cache'
  s.summary     = %q{A Redis backend store for Rack::Cache}
  s.description = s.summary
  s.license     = 'MIT'

  s.rubyforge_project = 'redis-rack-cache'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'redis-store', '>= 1.6', '< 2'
  s.add_dependency 'rack-cache',  '>= 1.6', '< 2'

  s.add_development_dependency 'rake',     '~> 10'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'mocha',    '~> 0.14.0'
  s.add_development_dependency 'minitest', '~> 5'
  s.add_development_dependency 'redis-store-testing'
  s.add_development_dependency 'appraisal'
end
