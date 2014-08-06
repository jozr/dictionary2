class Term

  @@dictionary = []

  def initialize
    @words = []
    @definitions = []
  end

  def Term.all
    @@terms
  end

  def Term.clear
    @@terms = []
  end

  def save
    @@terms << self
  end

  def add_word(word_object)
    @words << word_object
  end

  def add_definition(definition_object)
    @definitions << definition_object
  end

  def words
    @words
  end

  def definitions
    @definitions
  end
end
