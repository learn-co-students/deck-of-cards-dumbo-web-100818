require 'pry'
class Card
  attr_reader :rank, :suit

  def initialize(suit,rank)
    @rank = rank
    @suit = suit
  end

end
class Deck

  attr_reader :cards, :suit, :rank

  def initialize
    @suit = ["Spade", "Heart", "Club", "Diamond"]
    @rank = ["A", "2", "3", "4", "5", "6","7", "8", "9","10", "J", "Q", "K"]
    @cards = []

    @rank.each do |rank|
      @suit.each do |suit|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    pull = self.cards.sample
    self.cards.delete(pull)
  end

end
