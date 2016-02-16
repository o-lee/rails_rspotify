oclass RockPaperScissors

  class NoSuchStrategyError < StandardError; end

  def initialize
  end

  def self.winner(player1, player2)

    player1[1].upcase!
    player2[1].upcase!
    choices = %w(R P S)
    player2_choice = 0
    win = []
  
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless (choices.include?(player1[1]) and choices.include?(player2[1]))
   

    case player2[1]
      when choices[0]
        player2_choice = 0
      when choices[1]
        player2_choice = 1
      when choices[2]
        player2_choice = 2
    end

    if player1[1] == choices[player2_choice]
      win = [player1[0], player1[1]]
    elsif player1[1] == choices[player2_choice - 1]
      win = [player2[0], player2[1]]
    else
      win = [player1[0], player1[1]]
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      return self.winner(tournament[0], tournament[1])
      else return self.winner(self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1]))
    end
  end
end
