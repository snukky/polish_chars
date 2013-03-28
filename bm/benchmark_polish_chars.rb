# encoding: utf-8

$:.unshift File.join(File.dirname(__FILE__), "../lib")

require "./polskie_stringi"
require "../lib/polish_chars"

require "benchmark"

n = 100_000

all_chars = ('a'..'z').to_a + ('A'..'Z').to_a + String::PL_TO_ASCII.keys
sample_str = (0...n).map{ all_chars[rand(all_chars.size)] }.join

Benchmark.bm(16) do |bm|
  bm.report("standard lib:") { sample_str.downcase_ascii }
  bm.report("polskie_stringi:") { sample_str.downcase_ps }
  bm.report("polish_chars:") { sample_str.downcase }
end
