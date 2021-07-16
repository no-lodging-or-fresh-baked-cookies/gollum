Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'
  s.required_ruby_version = '>= 1.9'

  s.name              = 'gollum'
  s.version           = '5.2.3'
  s.date              = '2021-04-18'
  s.license           = 'MIT'

  s.summary     = 'A simple, Git-powered wiki.'
  s.description = 'A simple, Git-powered wiki with a sweet API and local frontend.'

  s.authors  = ['Tom Preston-Werner', 'Rick Olson']
  s.email    = 'tom@github.com'
  s.homepage = 'http://github.com/gollum/gollum'

  s.require_paths = %w[lib]

  s.executables = ['gollum', 'gollum-migrate-tags']

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency 'gollum-lib', '~> 5.1'
  s.add_dependency 'kramdown', '~> 2.3'
  s.add_dependency 'kramdown-parser-gfm', '~> 1.1.0'
  s.add_dependency 'sinatra', '~> 2.0'
  s.add_dependency 'sinatra-contrib', '~> 2.0'
  s.add_dependency 'mustache-sinatra', '~> 1.0'
  s.add_dependency 'useragent', '~> 0.16.2'
  s.add_dependency 'gemojione', '~> 4.1'
  s.add_dependency 'octicons', '~> 12.0'
  s.add_dependency 'sprockets', '~> 3.7'
  s.add_dependency 'sass', '~> 3.5'
  s.add_dependency 'uglifier', '~> 4.2'
  s.add_dependency 'sprockets-helpers', '~> 1.2'
  s.add_dependency 'rss', '~> 0.2.9'
  s.add_dependency 'therubyrhino', '~> 2.1.0'
  s.add_dependency 'webrick', '~> 1.7'
  s.add_dependency 'i18n', '~> 1.8'

  s.add_development_dependency 'rack-test', '~> 0.6.3'
  s.add_development_dependency 'shoulda', '~> 3.6.0'
  s.add_development_dependency 'minitest-reporters', '~> 1.3.6'
  s.add_development_dependency 'twitter_cldr', '~> 3.2.0'
  s.add_development_dependency 'mocha', '~> 1.8.0'
  s.add_development_dependency 'test-unit', '~> 3.3.0'
  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
