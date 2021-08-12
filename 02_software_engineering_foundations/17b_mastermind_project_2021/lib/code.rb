require "byebug"

class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.include?(char.upcase) }
  end

  def self.random(length)
    random_pegs = length.times.map { POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    # colors = pegs.split("").map { |peg| POSSIBLE_PEGS[peg] }
    Code.new(pegs.split"")
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else 
      raise "not valid pegs"
    end
  end

  def [](ind)
    @pegs[ind]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      count += 1 if guess[i] == @pegs[i]
    end
    count
  end

  def num_near_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      if self.pegs.include?(guess[i]) && guess[i] != self[i]
        count += 1 
      end
    end
    count
  end

  def ==(other_code)
    self.pegs == other_code.pegs
  end
end
