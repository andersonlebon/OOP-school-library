require './person.rb'
require './classroom.rb'
require './book.rb'
require './student.rb'
require './teacher.rb'



class Storage
    attr_reader :books
    def initialize
        @books = ["book1"]
        @peolpe = []       
    end
end


def say_welcome
    welcome_message = ["| Hello welcome to OOP-SCHOOL-LIBRARY App |" , "| Please choose an option by entering a number |"]
    options = ["1:  -  List all books", "2:  -  List all people", "3:  -  Create a person (teacher or student)", "4:  -  Create a book", "5:  -  Create a rental", "6:  -  List all rentals for a given person id"]
    puts "\n"*3

    puts  "="* 43
    puts "|" + " "* 41 + "|"
    puts welcome_message[0].upcase
    puts "|" + " "* 41 + "|"
    puts  "="* 43
    puts "\n"*3

    puts  "-"*49
    puts welcome_message[1]
    puts  "-"* 49
    puts "\n"*2

    puts options
end


def selected_option(option, store)
    case option
    when "1"
        puts store.books
    when "2"
        2
    when "3"
       3 
    else 
        4
    end
end


def main
    store = Storage.new()
    say_welcome()
    option = gets.chomp
    selected_option(option, store)
end


main()