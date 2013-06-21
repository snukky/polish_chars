# encoding: utf-8

class ::String
  BIG_TO_SMALL_PL = {
   'Ą' => 'ą',
   'Ć' => 'ć',
   'Ę' => 'ę',
   'Ł' => 'ł',
   'Ń' => 'ń',
   'Ó' => 'ó',
   'Ś' => 'ś',
   'Ź' => 'ź',
   'Ż' => 'ż'
  }

  SMALL_TO_BIG_PL = BIG_TO_SMALL_PL.invert

  BIG_CHARS_REGEXP = Regexp.new("[A-Z#{BIG_TO_SMALL_PL.keys.join}]")
  SMALL_CHARS_REGEXP = Regexp.new("[a-z#{SMALL_TO_BIG_PL.keys.join}]")

  BIG_PL_REGEXP = Regexp.new("[#{BIG_TO_SMALL_PL.keys.join}]")
  SMALL_PL_REGEXP = Regexp.new("[#{SMALL_TO_BIG_PL.keys.join}]")

  PL_TO_ASCII = {
    'ą' => 'a', 'Ą' => 'A',
    'ć' => 'c', 'Ć' => 'C',
    'ę' => 'e', 'Ę' => 'E',
    'ł' => 'l', 'Ł' => 'L',
    'ń' => 'n', 'Ń' => 'N',
    'ó' => 'o', 'Ó' => 'O',
    'ś' => 's', 'Ś' => 'S',
    'ź' => 'z', 'Ż' => 'Z',
    'ż' => 'z', 'Ź' => 'Z'
  }

  PL_REGEXP = Regexp.new("([#{PL_TO_ASCII.keys.join}])")

  alias :downcase_ascii :downcase

  def downcase
    self.downcase_ascii.gsub(BIG_PL_REGEXP, BIG_TO_SMALL_PL)
  end

  alias :downcase_ascii! :downcase!

  def downcase!
    replace downcase
  end

  alias :upcase_ascii :upcase

  def upcase
    self.upcase_ascii.gsub(SMALL_PL_REGEXP, SMALL_TO_BIG_PL)
  end

  alias :upcase_ascii! :upcase!

  def upcase!
    replace upcase
  end

  alias :capitalize_ascii :capitalize

  def capitalize
    str = self.downcase
    str[0] = str[0].upcase if str.size > 0
    str
  end

  alias :capitalize_ascii! :capitalize!

  def capitalize!
    replace capitalize
  end

  def no_pl
    self.gsub(PL_REGEXP, PL_TO_ASCII)
  end

  def no_pl!
    replace no_pl
  end
end
