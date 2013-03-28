# PolishChars

This gem extends `String` class methods, such as `#downcase` and `#upcase` by
handling diacritical signs from Polish langauge.

## Installation

Add this line to your application's Gemfile:

    gem 'polish_chars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polish_chars

## Usage

  require "polish\_chars"

  "zażółć gęślą jaźń".upcase
