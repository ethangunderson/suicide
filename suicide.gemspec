Gem::Specification.new do |s|
  s.name = %q{suicide}
  s.version = "1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ethan Gunderson"]
  s.date = %q{2010-04-17}
  s.default_executable = %q{suicide}
  s.description = %q{Instead of doing something stupid like raising NoMethodError, let's find the first object that responds to what you called.}
  s.email = %q{ethan@ethangunderson.com}
  s.files = ["lib/suicide.rb"]
  s.homepage = %q{http://github.com/ethangunderson/suicide}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Instead of doing something stupid like raising NoMethodError, let's find the first object that responds to what you called.}
end