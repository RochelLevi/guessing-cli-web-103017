# So your run_guessing_game method is going to be responsible for several things:
# - Taking in input from the command line
# - Comparing that input to a random number that has been generated
# - Printing out a statement You guessed the correct number! if the number has been guessed correctly, or The computer guessed <number>. if the number has been guessed incorrectly
# - Allowing the user to exit the program when exit is the input

def run_guessing_game
  input = nil
  while true
    number = rand(1..6)
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    if input == "exit"
      puts "Goodbye!"
      return
    elsif input.to_i == number
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{number}."
    end
  end
end
