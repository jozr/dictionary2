class Word

  @@all_words = []

  def initialize(word_input)
    @word_input = word_input
  end

  def word_input
    @word_input
  end

  def Word.all
    @@all_words
  end

  def Word.clear
    @@all_words = []
  end

  def save
    @@all_words << self
  end

end
