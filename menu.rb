require './data_save'
require './data_load'

class Menu
  def menu
    puts 'Please choose an option by entering a number:'
    puts '1 - List all Books.'
    puts '2 - List all People.'
    puts '3 - Create a Person.'
    puts '4 - Create a Book.'
    puts '5 - Create a Rental.'
    puts '6 - List all rentals for a given person id.'
    puts '7 - Exit'
  end

  def print_menu(app) # rubocop:disable Metrics/CyclomaticComplexity
    load_data(app)
    loop do
      menu
      input = gets.chomp.to_i
      case input
      when 1 then app.list_books
      when 2 then app.list_people
      when 3 then app.create_person
      when 4 then app.create_book
      when 5 then app.create_rental
      when 6 then app.list_rentals
      when 7
        save_data(app)
        break
      else
        puts 'Please enter a valid option between 1 to 7'
      end
    end
  end
end
