# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "raiden/version"

Gem::Specification.new do |s|
  s.name        = "raiden"
  s.version     = Raiden::VERSION
  s.authors     = ["Benjamin Oakes"]
  s.email       = ["ben@benjaminoakes.com"]
  s.homepage    = ""
  s.summary     = %q{A simple ATN parser for human languages, such as English.}
  s.description = s.summary

  s.rubyforge_project = "raiden"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
