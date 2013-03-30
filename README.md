# PolishChars

Gem extends the Ruby `String` class methods, such as `#downcase` and `#upcase` by
handling Polish diacritics. It also adds `#no_pl` method.

## Installation

Add this line to your application's Gemfile:

    gem 'polish_chars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polish_chars

## Usage

  require "polish\_chars"

  text = "Zażółć Gęślą Jaźń"
  text.downcase   # => "zażółć gęślą jaźń"
  text.upcase     # => "ZAŻÓŁĆ GĘŚLĄ JAŹŃ"
