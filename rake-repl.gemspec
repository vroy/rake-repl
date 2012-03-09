$LOAD_PATH.unshift 'lib'
require "rake-repl/version"

Gem::Specification.new do |s|
  s.name              = "rake-repl"
  s.version           = RakeRepl::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Interactive prompt for Rake."
  s.homepage          = "http://github.com/exploid/rake-repl"
  s.email             = "vince@vroy.ca"
  s.authors           = [ "Vincent Roy" ]
  s.has_rdoc          = false

  s.files             = %w( README.md LICENSE )
  s.files            += Dir.glob("bin/**/*")

  s.executables       = %w( rake-repl )
  s.description       = <<desc
Load your Rake environment once and get an interactive program to execute
multiple tasks easily.
desc
end
