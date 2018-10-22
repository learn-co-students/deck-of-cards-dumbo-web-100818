  class Deck
  require "pry"

  attr_reader :cards

      def initialize
        @cards=[]
        card
      end

      def card
        ["Ace",2,3,4,5,6,7,8,9,10,"Jack","Queen","King"].each do |rank|
          ["Heart","Club","Spade","Diamond"].each do |suit|
              @cards << Card.new(suit, rank)
          end
        end
      end
      def choose_card
        taken_card = @cards.pop()
      end
    end



  class Card
    attr_accessor :suit, :rank

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end

  end
