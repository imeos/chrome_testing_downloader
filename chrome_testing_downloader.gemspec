# frozen_string_literal: true

require_relative 'lib/chrome_testing_downloader/version'

Gem::Specification.new do |spec|
  spec.name = 'chrome_testing_downloader'
  spec.version = ChromeTestingDownloader::VERSION
  spec.authors = ['chris']
  spec.email = ['chris@imeos.com']

  spec.summary = 'A small tool to download and use any version of "Chrome For Testing" in Ruby on Rails system tests.'
  spec.description = 'Download and use any version of "Chrome For Testing" in Rails system tests.'
  spec.homepage = 'https://github.com/imeos/chrome_testing_downloader'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rails'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
