require './lib/definition'
require './lib/term'
require './lib/word'

def main_menu
  loop do
    puts "Press 'a' to add a term"
    puts "Press 'v' to view a term"
    puts "Press 'x' to exit"
    main_choice = gets.chomp

    if main_choice == 'a'
      add_term
    elsif main_choice == 'x'
      puts "Goodbye."
      exit
    elsif main_choice == 'v'
      view_term
    end
  end
end



