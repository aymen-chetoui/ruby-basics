Gem::Specification.new do |s|
  s.name        = "my-crowdfund"
  s.version     = "1.0.1"
  s.author      = "Aymen Chetoui"
  s.email       = "aymen.chetoui@gmail.com"
  s.summary     = "Fund projects contest"
  s.description = File.read(File.join(File.dirname(__FILE__), 'README'))
  s.homepage    = ""
  s.licenses     = ['MIT']
  
  s.files       = Dir["{bin,lib,spec}/**/*"] + %w(LICENCE README)
  s.test_files  = Dir["spec/**/*"]
  s.executables = [ 'crowdfund' ]
  
  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end