# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-shoplo/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-shoplo"
  s.version     = OmniAuth::Shoplo::VERSION
  s.authors     = ["Mateusz Sojda"]
  s.email       = ["mateusz@sojda.pl"]
  s.homepage    = "https://github.com/msojda/omniauth-shoplo"
  s.summary     = %q{OmniAuth strategy for Shoplo}
  s.description = %q{OmniAuth strategy for Shoplo}
  s.license     = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end