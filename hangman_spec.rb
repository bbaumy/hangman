require 'rspec'
require_relative 'hangman'

describe Hangman do
  it 'can take a predefined word' do
    g = Hangman.new "banana"

    expect(g.word).to eq "banana"
  end

  it 'can select a random word from a list' do
    g = Hangman.new

    expect(g.words.include? g.word).to eq true
  end

  skip 'can take one turn'

  skip 'can reject a wrong guess'

  skip 'can display a correct guess'

  skip 'can win a game'

  skip 'can lose a game'

end