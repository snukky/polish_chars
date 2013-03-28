# encoding: utf-8

require File.expand_path(File.dirname(__FILE__)) + "/../lib/polish_chars"
require "test/unit"

class TestPolishChars < Test::Unit::TestCase
  
  def test_downcase
    assert_equal "zażółć gęślą jaźń", "ZAŻÓŁĆ GĘŚLĄ JAŹŃ".downcase
  end

  def test_upcase
    assert_equal "ZAŻÓŁĆ GĘŚLĄ JAŹŃ", "zażółć gęślą jaźń".upcase
  end

  def test_no_pl
    assert_equal "ZAZOLC gesla jazn", "ZAŻÓŁĆ gęślą jaźń".no_pl
  end

end
