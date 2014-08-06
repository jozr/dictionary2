class Term

  attr_reader :words, :definitions

  @@dictionary = []

  def initialize
    @words = []
    @definitions = []
  end

  def Term.all
    @@dictionary
  end

  def Term.clear
    @@dictionary = []
  end

  def save
    @@dictionary << self
  end

  def add_word(word_object)
    @words << word_object
  end

  def add_definition(definition_object)
    @definitions << definition_object
  end

  def edit_word(edited_word)
    @words = edited_word
  end
end
