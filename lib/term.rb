class Term

  @@terms = []

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
end
