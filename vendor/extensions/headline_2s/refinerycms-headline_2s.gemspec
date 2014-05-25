# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-headline_2s'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Headline 2s extension for Refinery CMS'
  s.date              = '2014-05-25'
  s.summary           = 'Headline 2s extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.1.2'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.2'
end
