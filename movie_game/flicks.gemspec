Gem::Specification.new do |s|
  s.name        = "my-flicks"
  s.version     = "1.0.2"
  s.author      = "Aymen Chetoui"
  s.email       = "aymen.chetoui@gmail.com"
  s.summary     = "Plays and reviews movies"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.homepage    = ""
  
  s.files       = Dir["{bin,lib,spec}/**/*"] + %w(LICENCE README)
  s.test_files  = Dir["spec/**/*"]
  s.executables = [ 'flicks' ]
  
  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end