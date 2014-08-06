require 'rspec'
require 'definition'
require 'term'
require 'word'

describe Term do
  it 'is initialized with empty arrays of words and definitions' do
    test_term = Term.new
    test_term.should be_an_instance_of Term
  end

   describe '.all' do
    it 'starts as an empty array' do
      Term.all.should eq []
    end
  end

  describe '.clear' do
    it 'clears all terms' do
      Term.clear.should eq []
    end
  end

  describe 'save' do
    it 'adds a term to the array of terms' do
      test_term = Term.new
      test_term.save
      Term.all.should eq [test_term]
    end
  end
end

describe Word do
  it 'is initialized with a word' do
    test_word = Word.new 'Carrot'
    test_word.should be_an_instance_of Word
  end

  describe '.all' do
    it 'starts as an empty array' do
      Word.all.should eq []
    end
  end

  describe '.clear' do
    it 'clears all words' do
      Word.clear.should eq []
    end
  end

  describe 'save' do
    it 'adds a word to the array of words' do
      test_word = Word.new 'carrot'
      test_word.save
      Word.all.should eq [test_word]
    end
  end
end

describe Definition do
  it 'is initialized with a definition of the word' do
    test_definition = Definition.new 'an orange vegetable'
    test_definition.should be_an_instance_of Definition
  end

  describe '.all' do
    it 'starts as an empty array' do
      Definition.all.should eq []
    end
  end

  describe '.clear' do
    it 'clears all definitions' do
      Definition.clear.should eq []
    end
  end

  describe 'save' do
    it 'adds a definition to the array of definitions' do
      test_definition = Definition.new 'an orange vegetable'
      test_definition.save
      Definition.all.should eq [test_definition]
    end
  end
end
