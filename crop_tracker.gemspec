# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'crop_tracker/version'

Gem::Specification.new do |spec|
  spec.name          = "crop_tracker"
  spec.version       = CropTracker::VERSION
  spec.authors       = ["Janice Smith"]
  spec.email         = ["janice.k.n.smith@gmail.com"]

  spec.summary       = %q{this is a command line tool to help keep track of crop yeilds}
  spec.description   = %q{this is a command line tool to help keep track of crop yeilds, and is really cool}
  spec.homepage      = ""

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables = ["crop_tracker"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
end
