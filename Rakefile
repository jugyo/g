require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "g"
    gem.summary = %Q{g is like p}
    gem.description = %Q{The Kernel.g that works like Kernel.p on growl :)}
    gem.email = "jugyo.org@gmail.com"
    gem.homepage = "http://github.com/jugyo/g"
    gem.authors = ["jugyo"]
    gem.add_development_dependency "rspec", ">= 0"
    gem.add_dependency "ruby_gntp", ">= 1.0.1"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
