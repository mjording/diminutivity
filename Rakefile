require 'bundler'
require "rake/testtask"
Bundler::GemHelper.install_tasks
Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = "test/**/test_*.rb"
end

task :default => :test
