# encoding: utf-8

class ::String

  # wszystkie litery na małe
  def downcase_ps
    # pl_replace z tablicy dużych liter na tablicę małych liter
    pl_replace(String.polish_chars('big') + ('A'..'Z').to_a, String.polish_chars('small') + ('a'..'z').to_a)
  end

  # tablica polskich znaków, np do użycia z regexpami jako zakres
  # ('small' => tylko małe, 'big' => tylko duże, 'all' lub brak => wszystkie)
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

  # zamienia znaki z tablicy search na tablicę replace
  def pl_replace(search, replace)
    self.chars.collect{|c| (id = search.index(c)) ? replace[id] : c}.join('')
  end
end
