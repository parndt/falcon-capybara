# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "falcon/capybara/version"

Gem::Specification.new do |spec|
	spec.name          = "falcon-capybara"
	spec.version       = Falcon::Capybara::VERSION
	spec.authors       = ["Samuel Williams"]
	spec.email         = ["samuel.williams@oriontransfer.co.nz"]

	spec.summary       = %q{}
	spec.homepage      = "https://github.com/socketry/falcon-capybara"

	spec.files         = `git ls-files -z`.split("\x0").reject do |f|
		f.match(%r{^(test|spec|features)/})
	end
	
	spec.require_paths = ["lib"]
	
	spec.add_dependency "falcon"
	spec.add_dependency "capybara"
	spec.add_dependency "selenium-webdriver"
	
	spec.add_development_dependency "bundler", "~> 1.15"
	spec.add_development_dependency "rake", "~> 10.0"
	spec.add_development_dependency "rspec", "~> 3.0"
end