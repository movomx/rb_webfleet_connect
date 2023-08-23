# frozen_string_literal: true

require_relative "lib/webfleet_connect/version"

Gem::Specification.new do |spec|
  spec.name = "webfleet_connect"
  spec.version = WebfleetConnect::VERSION
  spec.authors = ["alex"]
  spec.email = ["alex.guajardo@movomx.com"]

  spec.summary = "Gem to consume Webfleet connect api."
  spec.description = "The WEBFLEET.connect API connects software appli­ca­tions with the Webfleet fleet management solution. Via WEBFLEET.connect you can enhance the value of all types of business solutions, including routing and scheduling optimization, ERP, Transport Management System (TMS), supply chain planning, asset management, and much more."
  spec.homepage = "https://movomx.com"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = "https://github.com/movomx/webfleet_connect"
  spec.metadata["source_code_uri"] = "https://github.com/movomx/webfleet_connect"
  spec.metadata["changelog_uri"] = "https://github.com/movomx/webfleet_connect"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', "~> 0.21.0"
  spec.add_dependency 'json', '2.6.3'
  spec.add_dependency 'csv', '~> 3.2', '>= 3.2.7'
  spec.add_development_dependency "rspec", "~> 3.2"
end
