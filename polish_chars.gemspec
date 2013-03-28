# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "polish_chars"
  gem.version       = "0.0.1"
  gem.authors       = ["snukky"]
  gem.email         = ["snk987@gmail.com"]
  gem.description   = %q{Extends standard String class by methods handling 
                         diacritical signs for Polish language.}
  gem.summary       = %q{Extends String class by handling Polish characters.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
