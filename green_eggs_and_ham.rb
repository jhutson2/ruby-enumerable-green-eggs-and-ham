class GreenEggsAndHam
  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split(/[ .!?,\n]/).reject { |word| word.empty? }
  end

  def word_count
    @words.count
  end

  def sorted_unique_words
    downcase_words = @words.map { |word| word.downcase }
    downcase_unique_words = downcase_words.uniq
    sorted_words = downcase_unique_words.sort
  end

  def number_of_words_shorter_than (count)
    number_of_words = @words.select { |word| word.length < 4 }
    shorter_words = number_of_words.count
  end

  def longest_word
    long_word = @words.max_by do |word| word.length
    end
  end

  def stanzas
    @text.split ("\n" * 2)

  end

  def lines
    @text.split("\n").reject { |word| word.empty? }
  end

  def frequency_of_unique_words
    frequencies = Hash.new

    sorted_unique_words.each do |unique_word|
      frequency = @words.count { |word| word.downcase == unique_word }
      frequencies[unique_word] = frequency
    end
    frequencies
  end
end
