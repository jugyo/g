$:.unshift File.dirname(__FILE__) + '/lib/'

require 'spec/rake/spectask'
desc 'run all specs'
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = ['-c']
end

desc 'Generate gemspec'
task :gemspec do |t|
  open('g.gemspec', "wb" ) do |file|
    file << <<-EOS
Gem::Specification.new do |s|
  s.name = 'g'
  s.version = '1.0.0'
  s.summary = "The Kernel.g that works like Kernel.p on growl :)"
  s.description = "The Kernel.g that works like Kernel.p on growl :)"
  s.files = %w( #{Dir['lib/**/*.rb'].join(' ')}
                #{Dir['spec/**/*.rb'].join(' ')}
                README.markdown
                Rakefile )
  s.add_dependency("ruby-growl", ">= 1.0.1")
  s.author = 'jugyo'
  s.email = 'jugyo.org@gmail.com'
  s.homepage = 'http://github.com/jugyo/g'
  s.rubyforge_project = 'kernelg'
  s.has_rdoc = false
end
    EOS
  end
  puts "Generate gemspec"
end

desc 'Generate gem'
task :gem => :gemspec do |t|
  system 'gem', 'build', 'g.gemspec'
end
