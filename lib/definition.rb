class Definition
  @@all_definitions = []

  def initialize(definition_input)
    @definition_input = definition_input
  end

  def definition_input
    @definition_input
  end

  def Definition.all
    @@all_definitions
  end

  def Definition.clear
    @@all_definitions = []
  end

  def save
    @@all_definitions << self
  end

end
