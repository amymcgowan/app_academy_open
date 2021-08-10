class Code  
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

    attr_reader :pegs

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(Array.new(random_pegs))
  end

   def self.from_string(string)
    Code.new(string.split(""))
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else
      raise "That is not a valid guess"
    end
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    sum = 0
    
    (0...guess.length).each do |i|
      if guess[i] == @pegs[i]
        sum += 1
      end
    end
    sum
  end

  def num_near_matches(guess)
    sum = 0
    
    (0...guess.length).each do |i|
      if guess[i] != @pegs[i] && @pegs.include?(guess[i])
        sum += 1
      end
    end
    sum
  end

  def ==(other_code)
    other_code.pegs == self.pegs
  end
  
end
