class Hangman
  attr_reader :words, :word

  @words = ['banana', 'apple', 'technodrome']

  def initialize(word=nil)
    @word = word

    # @turns_left = word.length
    # words = File.readlines '/usr/share/dict/words'
  end

  def pick_word
    @word = words.sample
        # @words.sample
  end
  #
  # def take_turn
  #   @turns_left -= 1
  # end
end



# @board = []
#
# @last_guess = a_letter
#
# @word = ["b", "a", "n", "a", "n", "a"]
#
# @guesses = ["r", "s", "b"]
#
# @turns_left =