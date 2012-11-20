# -*- encoding: utf-8 -*-
require File.expand_path('../lib/generic_visitor/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "generic_visitor"
  s.version       = GenericVisitor::VERSION
  s.authors       = ['Gabriel Naiman']
  s.email         = ['gabynaiman@gmail.com']
  s.description   = 'Ruby visitor pattern implementation'
  s.summary       = 'Ruby visitor pattern implementation'
  s.homepage      = 'https://github.com/gabynaiman/generic_visitor'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
end
