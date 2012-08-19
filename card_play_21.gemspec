# -*- encoding: utf-8 -*-
require File.expand_path('../lib/card_play_21/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anastasia Sakhno"]
  gem.email         = ["anastasia.sakhno@gmail.com"]
  gem.description   = %q{card game '21' for one person}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "card_play_21"
  gem.require_paths = ["lib"]
  gem.version       = CardPlay21::VERSION
  gem.add_development_dependency "rspec"
end
