class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    cups.each_with_index do |cup, i|
      if i != 6 && i != 13 
        4.times do 
          cup << :stone 
        end
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 13 || start_pos < 0
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    emptied_cup = []
    until cups[start_pos].empty?
      emptied_cup << cups[start_pos].shift 
    end

    i = start_pos + 1
    until emptied_cup.empty?
      if !(7..13).include?(i)
        cups[i] << emptied_cup.shift unless emptied_cup.empty?
      end
      i+=1
      if i > 13
        i = 0
      end
    end

    render 
    return next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      p :prompt
    elsif cups[ending_cup_idx].empty? 
      p :switch
    elsif !cups[ending_cup_idx].empty?
      p ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end