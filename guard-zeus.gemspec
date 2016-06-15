# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard/zeus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'guard-zeus'
  gem.version       = Guard::ZeusVersion::VERSION
  gem.version       = "#{gem.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['jonathangreenberg', 'Andrew Assarattanakul', 'Rob Sharp']
  gem.email         = ['greenberg@entryway.net', 'assarata@gmail.com', 'qnm@fea.st']
  gem.description   = 'Guard::Zeus automatically manage zeus'
  gem.summary       = 'Pushes watched files to Zeus'
  gem.homepage      = 'https://github.com/guard/guard-zeus'

  gem.add_runtime_dependency 'guard', '~> 2.0'
  gem.add_runtime_dependency 'guard-compat', '~> 1.1'
  gem.add_runtime_dependency 'zeus', '~> 0'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'ruby_dep', '~> 1.1'

  begin
    require 'ruby_dep/travis'
    gem.required_ruby_version = RubyDep::Travis.new.version_constraint
  rescue LoadError
    puts 'Unable to set required_ruby_version'
  end

  gem.files         = Dir.glob('{lib}/**/*') + %w(LICENSE README.md)
  gem.require_path  = 'lib'
end
