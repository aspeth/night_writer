require './lib/alphabet'

module Dictionary
  def english_to_braille(incoming_text)

    letter_hash = Alphabet.new.letter_hash

    rows = []
    formatted_rows = []
    3.times do |index|
      rows[index] = []
      formatted_rows[index] = []
      incoming_text.each_char { |char| rows[index] << letter_hash.values_at(char)[0][index] }
      formatted_rows[index] = rows[index].each_slice(40).map { |string| string.join }
    end

    counter = formatted_rows[0].count
    index_num = 0
    formatted_text = ""
    counter.times do
      formatted_text << "#{formatted_rows[0][index_num]}\n#{formatted_rows[1][index_num]}\n#{formatted_rows[2][index_num]}\n\n"
      index_num += 1
    end
    formatted_text
  end

  def braille_to_english(incoming_text)
    letter_hash = Alphabet.new.letter_hash.invert
# require "pry"; binding.pry
    letter_hash[incoming_text.split("\n")]
  end
end
