# encoding: utf-8

$:.unshift File.join(File.dirname(__FILE__), "../lib")

require "polish_chars"
require "test/unit"

class TestPolishChars < Test::Unit::TestCase
  
  def test_downcase
    assert_equal "zażółć gęślą jaźń", "ZAŻÓŁĆ GĘŚLĄ JAŹŃ".downcase
  end

  def test_upcase
    assert_equal "ZAŻÓŁĆ GĘŚLĄ JAŹŃ", "zażółć gęślą jaźń".upcase
  end

  def test_capitalize
    assert_equal "Zażółć gęślą jaźń", "ZAŻÓŁĆ Gęślą jaźń".capitalize
    assert_equal "Ąbć", "ĄBĆ".capitalize
  end

  def test_no_pl
    assert_equal "ZAZOLC gesla jazn", "ZAŻÓŁĆ gęślą jaźń".no_pl
  end

  def test_bang_downcase
    str = "ZAŻÓŁĆ GĘŚLĄ JAŹŃ"

    str.downcase
    assert_equal "ZAŻÓŁĆ GĘŚLĄ JAŹŃ", str

    str.downcase!
    assert_equal "zażółć gęślą jaźń", str
  end

end
