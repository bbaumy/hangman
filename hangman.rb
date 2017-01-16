class Hangman
  attr_accessor :words, :word

  def initialize(word=nil)
    # @words = ['banana', 'apple', 'technodrome']
    # @word = word
    # @word ||= words.sample
    @guesses = []
    @turns = 7

    contents    = File.read '/usr/share/dict/words'
    words       = contents.split
    good_words  = words.select do |w|
      4 <= w.length && w.length <= 9 && w.downcase == w
    end

    @word = good_words.sample

  end

  def ask_for_user_input
    puts "The answer is #{@word}"
    print '> '
    letter = gets.chomp
    if @word.include? letter
      puts 'Correct!'
    else
      puts 'No!'
      # Player loses a turn
      @turns -= 1
    end
    @guesses.push letter
  end

  def show_board
    array = []
    @word.chars.each do |char|
      if @guesses.include? char
        array.push char
      else
        array.push '_'
      end
    end
    array.join(' ')
  end

  def show_guesses
   puts @guesses.join(',')
   puts "You have #{@turns} turns left"
  end

  def out_of_turns?
    @turns == 0
  end

def found_answer?
  # 1. the board includes no underscores
  !show_board.include?('_')

  # 2. every letter in the answer (@word) has been guessed
  @word.chars.all? do |letter|
    @guesses.include? letter
  end
  end
end

g = Hangman.new
until g.out_of_turns? || g.found_answer? do
  g.ask_for_user_input
  puts g.show_board
  g.show_guesses
end

puts "The answer was: #{g.word}"


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