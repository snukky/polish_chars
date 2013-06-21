# PolishChars

Gem extends the Ruby `String` class methods, such as `#downcase` and `#upcase` by
handling Polish diacritics. It also adds `#no_pl` method. It's much faster then
gem named `polskie_stringi`.

## Installation

Add this line to your application's Gemfile:

    gem 'polish_chars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polish_chars

## Usage

Example:

    require "polish_chars"

    text = "Zażółć Gęślą Jaźń"
    text.downcase   # => "zażółć gęślą jaźń"
    text.upcase     # => "ZAŻÓŁĆ GĘŚLĄ JAŹŃ"
