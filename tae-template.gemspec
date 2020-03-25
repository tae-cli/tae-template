# frozen_string_literal: true

require_relative 'lib/tae/version'

Gem::Specification.new do |spec|
  spec.name          = 'tae-template'
  spec.version       = Tae::VERSION
  spec.authors       = ['KieranPringle']
  spec.email         = ['contact@kieranpringle.com']

  spec.summary       = 'Template for creating tae modules & plugins'
  spec.description   = 'This gem has all the ci and quality set up ready to go'
  spec.homepage      = 'https://github.com/tae-cli'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/tae-cli/tae-template'
  spec.metadata['changelog_uri'] = 'https://github.com/tae-cli/tae-template/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # runtime deps
  spec.add_runtime_dependency 'sorbet-runtime', '~> 0.5.5460'

  # development deps
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.80.1'
  spec.add_development_dependency 'rubocop-rake', '~> 0.5.1'
  spec.add_development_dependency 'rubocop-sorbet', '~> 0.3.7'
  spec.add_development_dependency 'simplecov', '~> 0.18.5'
  spec.add_development_dependency 'sorbet', '~> 0.5.5460'
  spec.add_development_dependency 'yard', '~> 0.9.24'
  spec.add_development_dependency 'yard-junk', '~> 0.0.7'
  spec.add_development_dependency 'yardstick', '~> 0.9.9'
end
