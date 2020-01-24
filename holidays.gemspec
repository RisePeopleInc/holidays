# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'holidays/version'

Gem::Specification.new do |gem|
  gem.name          = 'holidays'
  gem.version       = Holidays::VERSION
  gem.authors       = ['Alex Dunae', 'Phil Trimble']
  gem.email         = ['holidaysgem@gmail.com']
  gem.homepage      = 'https://github.com/holidays/holidays'
  gem.description   = %q(A collection of Ruby methods to deal with statutory and other holidays. You deserve a holiday!)
  gem.summary       = %q(A collection of Ruby methods to deal with statutory and other holidays.)
  gem.files         = `git ls-files`.split("\n") - ['.gitignore', '.travis.yml', '.coveralls.yml']
  gem.test_files    = gem.files.grep(/^test/)
  gem.require_paths = ['lib']
  gem.licenses      = ['MIT']
  gem.required_ruby_version = '~> 2.0'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'coveralls', '= 0.8.11'
  gem.add_development_dependency 'test-unit'
  gem.add_development_dependency 'mocha', '~>1.0'
  gem.add_development_dependency 'pry', '~>0.10'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.pkg.github.com/RisePeopleInc"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
end
