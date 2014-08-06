require 'rspec'
require 'definition'
require 'term'
require 'word'

describe Term do
  it 'is initialized with empty arrays of words and definitions' do
    test_term = Term.new
    test_term.should be_an_instance_of Term
  end
end

describe Word do
  it 'is initialized with a word' do
    test_word = Word.new 'Carrot'
    test_word.should be_an_instance_of Word
  end
end

describe Definition do
  it 'is initialized with a definition of the word' do
    test_definition = Definition.new 'an orange vegetable'
    test_definition.should be_an_instance_of Definition
  end
end
