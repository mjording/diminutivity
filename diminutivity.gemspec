# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "diminutivity"


Gem::Specification.new do |s|
  s.name        = "diminutivity"
  s.version     = Diminutivity::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthew Jording"]
  s.email       = ["mjording@gmail.com"]
  s.homepage    = "https://github.com/mjording/diminutivity"
  s.summary     = %q{diminutive names and nicknames matcher}
  s.description = %q{diminutive names and nicknames matcher. Currently US centric source mapping from http://code.google.com/p/nickname-and-diminutive-names-lookup/}

  s.rubyforge_project = "diminutivity"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-matchers'
end
