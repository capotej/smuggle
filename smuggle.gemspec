# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "smuggle"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Julio Capote"]
  s.email       = ["jcapote@gmail.com"]
  s.homepage    = "http://www.github.com/capotej/smuggle"
  s.summary     = %q{Import/Export model and association data easily from one place to another}
  s.description = %q{Import/Export model and association data easily from one place to another}

  s.rubyforge_project = "smuggle"
  		      
  s.add_dependency 'gibberish'
  s.add_dependency 'gist'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
