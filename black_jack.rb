require "pry"
require "colorize"

class Card
    attr_accessor :rank, :suit, :color
    def initialize (rank, suit, color)
        @rank = rank
        @suit = suit
        @color = color
    end
end

class Deck
    attr_accessor :cards
    def initialize 
        @rank = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
        @suit = %w(Hearts Diamonds Spades Clubs)
        @color = []
        @cards = []
        generate_deck
    end
    
    def generate_deck
        @suit.each do |suit|
            @rank.size.times do |i|
                color = (suit == 'Spades' || suit == 'Clubs') ? 'Black': 'red'
                @cards << Card.new(@rank[i], suit, color)
            end
        end
    end
    
    def shuffle_cards
        @shuffled_cards = @cards.shuffle
    end
end


class Game
    def initialize    
        @d = Deck.new
        @player = @d.cards.sample(2)
        @dealer = @d.cards.sample(2)
        @dealer.first
        @d.each do |rank, suit| 
            puts "#{index + 1}) #{rank.rank}, #{suit.suit}"
        end
        
            binding.pry
        menu
    end

    def menu 
        puts "Welcome to Black Jack"
        puts @player
        puts @dealer
        puts "How much will you bet?"
        bet = gets.to_i
        puts "Hit or Stay?"
        puts "1 = Hit, 2 = Stay"
        choice
    end
    
    def cards_total(cards)
        
        total >= 21 
    
        # take the rank and add it to total
            # if its high card convert that to 10/11
        # return total
    end

    def choice
        case answer = gets.to_i
            
        when 1 
            @player << @d.cards.sample(1)
        if cards_total > 21
            puts "Bust!"
            cards_total
            wallet.withdraw(2 * bet)
            choice 

        when 2
            cards_total
            
        end
    end
    
end



g = Game.new

