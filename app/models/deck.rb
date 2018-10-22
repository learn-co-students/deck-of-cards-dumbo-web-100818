require 'pry'
require_relative 'card.rb'

class Card
  attr_accessor :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank

  end

  # binding.pry
end

class Deck
  # has_many :cards
  @cards = []
  attr_reader :suits, :rank
  attr_accessor :cards
  @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
  @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  def initialize
    @suits.each do |suit|
      @rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @cards
  end



  def choose_card
    random_card = @cards.sample
    @cards.delete(random_card)

  end
  binding.pry
end
