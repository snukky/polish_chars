# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "polish_chars"
  gem.version       = "0.0.3"
  gem.authors       = ["snukky"]
  gem.email         = ["snk987@gmail.com"]
  gem.description   = %q{Gem extends some of the Ruby String class methods, such 
                         as #downcase and #upcase, by handling Polish diacritics. 
                         It also adds #no_pl method.}
  gem.summary       = %q{An extension of Ruby String class methods for handling 
                         Polish diacritics.}
  gem.homepage      = "https://github.com/snukky/polish_chars"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
