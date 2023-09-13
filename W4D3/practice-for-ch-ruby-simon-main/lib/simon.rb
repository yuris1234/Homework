class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end

  def play
    take_turn
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence 
    require_sequence
    if game_over == false 
      round_success_message
      self.sequence_length = sequence_length + 1
    end
  end

  def show_sequence
    add_random_color
    print seq.join(" ")
    puts
  end

  def require_sequence
    print "Repeat back the sequence shown just now, one color at a time."
    puts
    user = []
    until user.length == seq.length 
      get = gets.chomp
      user << get
    end
    if user != seq
      self.game_over = true
    end
  end

  def add_random_color
    seq << COLORS[0]
    seq << COLORS.sample
  end

  def round_success_message
    print "Round won!"
    puts
  end

  def game_over_message
    print "Game over!"
    puts
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false 
    self.seq = []
  end
end

# b = Simon.new 
# b.play