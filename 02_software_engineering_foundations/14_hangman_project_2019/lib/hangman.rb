class Hangman
  DICTIONARY = ["mayonegg", "bees", "blueman", "banananstand",
                  "staircar", "annyeong", "armyprizes", "chicken",
                  "bluth"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    indices = []
    
    @secret_word.each_char.with_index do |ele, ind|
      if ele == char
        indices << ind
      end
    end

    indices
  end

  def fill_indices(char, indices)
    indices.each do |ind|
      @guess_word[ind] = char
    end
  end
      
  def try_guess(char)
    if self.already_attempted?(char)
      puts "That has already been attempted."
      return false
    end
      
    @attempted_chars << char
    
    indicies = self.get_matching_indices(char)
    self.fill_indices(char, indicies)
    @remaining_incorrect_guesses -= 1 if indicies.empty?
       
    true
  end

  def ask_user_for_guess
    puts "Enter a character:"
    guess = gets.chomp
    self.try_guess(guess)
  end

  def win?
    if @guess_word.join == @secret_word
      puts "YOU WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else 
      return false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    end
    false
  end
  
end
