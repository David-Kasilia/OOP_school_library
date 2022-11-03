require './app'

def main
  puts 'Welcome to The OOP School Library Application'
  school = App.new
  school.menu_selection
end

main
