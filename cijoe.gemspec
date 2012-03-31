$LOAD_PATH.unshift 'lib'
require "cijoe/version"

Gem::Specification.new do |s|
  s.name              = "philipp-spiess-cijoe"
  s.version           = CIJoe::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "cijoe builds your builds."
  s.homepage          = "http://github.com/philipp-spiess/cijoe"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath", "Josh Owens", "Philipp Spieß" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.executables       = %w( cijoe )

  s.add_runtime_dependency     'choice'
  s.add_runtime_dependency     'sinatra', '1.3.1'
  s.add_runtime_dependency     'json'
  s.add_runtime_dependency     'tinder', '>= 1.4.0'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake', '>= 0.9.2'
  s.add_development_dependency 'rdoc', '>= 2.4.2'
  s.add_development_dependency 'fakefs'

   s.description       = <<desc
  cijoe is a sinatra-based continuous integration server. It's like an
  old rusty pickup truck: it might be smelly and gross, but it gets the
  job done.
desc
end
