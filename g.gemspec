# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "g"
  s.version     = "1.5.0"
  s.authors     = ["jugyo"]
  s.email       = ["jugyo.org@gmail.com"]
  s.homepage    = "http://github.com/jugyo/g"
  s.summary     = %q{The Kernel.g}
  s.description = %q{It works like Kernel.p with growl :)}
  s.rubyforge_project = "g"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency "ruby_gntp"
end
