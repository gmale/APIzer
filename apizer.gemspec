# -*- encoding: utf-8 -*-
require File.expand_path('../lib/apizer/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'apizer'
  s.version       = Apizer::VERSION
  s.authors       = ['Kevin Gorham']
  s.email         = ['anothergmale@gmail.com']
  s.homepage      = 'https://github.com/gmale/apizer'
  s.summary       = 'A simple tool to help me explore APIs and Ruby. Two birds. One stone.'

  s.require_paths = ['lib']
  s.files         = Dir.glob("{bin,lib}/**/*")
  s.executables   = ['apizer']

  # s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency('thor', '>= 0.19.1')
end