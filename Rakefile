#!/usr/bin/env rake
require 'bundler/gem_tasks'

require 'rspec/core/rake_task'

default_tasks = []

default_tasks << RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = (ENV['CI'] == 'true')
end

if ENV['CI'] != 'true'
  require 'rubocop/rake_task'
  default_tasks << RuboCop::RakeTask.new(:rubocop)
end

task default: default_tasks.map(&:name)
