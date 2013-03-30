# encoding: utf-8
# code from gem 'polskie_stringi'

class ::String

  def downcase_ps
    pl_replace(String.polish_chars('big') + ('A'..'Z').to_a, String.polish_chars('small') + ('a'..'z').to_a)
  end

  def self.polish_chars(size = 'all')
    small = %w[ą ę ś ć ź ż ó ł ń]
    big = %w[Ą Ę Ś Ć Ź Ż Ó Ł Ń]
    case size
    when 'small'
      small
    when 'big'
      big
    else
      small + big
    end
  end

  protected

  def pl_replace(search, replace)
    self.chars.collect{|c| (id = search.index(c)) ? replace[id] : c}.join('')
  end
end
