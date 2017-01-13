require 'rspec'
require_relative 'hangman'

describe Hangman do
  it 'can take a predefined word' do
    g = Hangman.new "banana"

    expect(g.pick_word).to eq "banana"
  end

  it 'can select a random word from a list do' do
    g = Hangman.new

    g.pick_word

    expect(g.pick_word).to eq
  end

  skip 'can take one turn'

  skip 'can reject a wrong guess'

  skip 'can display a correct guess'

  skip 'can win a game'

  skip 'can lose a game'

end