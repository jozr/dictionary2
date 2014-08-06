require './lib/definition'
require './lib/term'
require './lib/word'

def main_menu
  loop do
    puts "*******Dictionary*******"
    puts "Press 'a' to add a new term"
    # puts to add another word to a term
    # puts to add another definition to a term
    puts "Press 'v' to view a term"
    puts "Press 'x' to exit"
    main_choice = gets.chomp

    if main_choice == 'a'
      add_term_word
    elsif main_choice == 'x'
      puts "Goodbye."
      exit
    elsif main_choice == 'v'
      view_term
    end
  end
end

def add_term_word
  Term.new.save
  puts 'What word would you like to add?'
  input_add_term = gets.chomp
  Word.new(input_add_term).save
  puts "#{input_add_term} added."
  add_definition
end

def add_definition
  puts "Please add a definition"
  user_definition = gets.chomp
  Definition.new(user_definition).save
  puts "\nNew definition saved\n\n"
end

def view_term
  Word.all.each do |looplord|
    puts "\n\n#{looplord.word_input}"
  end
end
main_menu


