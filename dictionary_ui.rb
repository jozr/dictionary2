require './lib/definition'
require './lib/term'
require './lib/word'

def main_menu
  loop do
    puts "*******Dictionary*******"
    puts "Press 's' to search for and view terms"
    puts "Press 'a' to add a new term"
    puts "Press 'm' to modify a term"
    puts "Press 'x' to exit"
    main_choice = gets.chomp

    if main_choice == 'a'
      add_term
    elsif main_choice == 'x'
      puts "Goodbye."
      exit
    elsif main_choice == 's'
      search_term
    elsif main_choice == 'm'
      modify_term
    end
  end
end

def add_term
  new_term = Term.new
  new_term.save
  add_new_word(new_term)
  add_new_definition(new_term)
end

def add_new_word(term)
  puts "add a new word"
  input_add_term = gets.chomp
  new_word = Word.new(input_add_term)
  new_word.save
  term.add_word(new_word)
  puts "\n#{input_add_term} added.\n\n"
end

def add_new_definition(term)
  puts "Please add a definition"
  user_definition = gets.chomp
  new_definition = Definition.new(user_definition)
  new_definition.save
  term.add_definition(new_definition)
  puts "\nNew definition saved\n\n"
end

def modify_term

  puts "\nEnter a term to modify\n"
  Term.all.each do |term|
    term.words.each do |word|
      puts "#{word.word_input}"
    end
  end

  user_choice = gets.chomp
  Term.all.each do |term|
    term.words.each do |word|
      if user_choice == word.word_input
        puts "Press 'd' to add a new definition"
        puts "Press 'w' to add a new word"
        choice = gets.chomp
        if choice == 'd'
          add_new_definition(term)
        elsif choice == 'w'
          add_new_word(term)
        end
      # else
      #   puts 'try again'
      end
    end
  end
end

def search_term
  puts "Enter a word to see the definitions"
  Term.all.each do |term|
    term.words.each do |word|

      # puts "\n#{word.word_input}\n"
    end
  end

  user_choice = gets.chomp
  Term.all.each do |term|
    term.words.each do |word|
      if user_choice == word.word_input
        term.definitions.each do |definition|
          puts definition.definition_input
        end
      end
    end
  end

end
main_menu


