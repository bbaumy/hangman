class Hangman
  attr_accessor :words, :word

  def initialize(word=nil)
    @words = ['banana', 'apple', 'technodrome']
    @word = word
    @word ||= @words.sample
    # words = File.readlines '/usr/share/dict/words'
  end

  def ask_for_user_input
    puts "The answer is #{@word}"
    print '> '
    letter = gets.chomp
    if @word.include? letter
      puts 'Correct!'
    else
      puts 'No!'
    end
    @guesses.push letter
  end

  def show_guesses
   puts @guesses.join(',')
  end

end





# def take_turn
#   @turns_left -= 1
# end




# @turns_left = word.length

# @board = []
#
# @last_guess = a_letter
#
# @word = ["b", "a", "n", "a", "n", "a"]
#
# @guesses = ["r", "s", "b"]
#
# @turns_left =