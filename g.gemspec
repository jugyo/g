Gem::Specification.new do |s|
  s.name = 'g'
  s.version = '1.2.0'
  s.summary = "The Kernel.g that works like Kernel.p on growl :)"
  s.description = "The Kernel.g that works like Kernel.p on growl :)"
  s.files = %w( lib/g.rb
                spec/g_spec.rb
                README.markdown
                Rakefile )
  s.add_dependency("ruby-growl", ">= 1.0.1")
  s.author = 'jugyo'
  s.email = 'jugyo.org@gmail.com'
  s.homepage = 'http://github.com/jugyo/g'
  s.rubyforge_project = 'kernelg'
  s.has_rdoc = false
end
