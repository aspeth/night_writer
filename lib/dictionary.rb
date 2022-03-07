require './lib/night_writer'

module Dictionary
  def english_to_braille(incoming_text)
         letter_hash = {"a" => { 1 => "O.",
                                 2 => "..",
                                 3 => ".." },
                        "b" => { 1 => "O.",
                                 2 => "O.",
                                 3 => ".." },
                        "c" => { 1 => "OO",
                                 2 => "..",
                                 3 => ".." },
                        "d" => { 1 => "OO",
                                 2 => ".O",
                                 3 => ".." },
                        "e" => { 1 => "O.",
                                 2 => ".O",
                                 3 => ".." },
                        "f" => { 1 => "OO",
                                 2 => "O.",
                                 3 => ".." },
                        "g" => { 1 => "OO",
                                 2 => "OO",
                                 3 => ".." },
                        "h" => { 1 => "O.",
                                 2 => "OO",
                                 3 => ".." },
                        "i" => { 1 => ".O",
                                 2 => "O.",
                                 3 => ".." },
                        "j" => { 1 => ".O",
                                 2 => "OO",
                                 3 => ".." },
                        "k" => { 1 => "O.",
                                 2 => "..",
                                 3 => "O." },
                        "l" => { 1 => "O.",
                                 2 => "O.",
                                 3 => "O." },
                        "m" => { 1 => "OO",
                                 2 => "..",
                                 3 => "O." },
                        "n" => { 1 => "OO",
                                 2 => ".O",
                                 3 => "O." },
                        "o" => { 1 => "O.",
                                 2 => ".O",
                                 3 => "O." },
                        "p" => { 1 => "OO",
                                 2 => "O.",
                                 3 => "O." },
                        "q" => { 1 => "OO",
                                 2 => "OO",
                                 3 => "O." },
                        "r" => { 1 => "O.",
                                 2 => "OO",
                                 3 => "O." },
                        "s" => { 1 => ".O",
                                 2 => "O.",
                                 3 => "O." },
                        "t" => { 1 => ".O",
                                 2 => "OO",
                                 3 => "O." },
                        "u" => { 1 => "O.",
                                 2 => "..",
                                 3 => "OO" },
                        "v" => { 1 => "O.",
                                 2 => "O.",
                                 3 => "OO" },
                        "w" => { 1 => ".O",
                                 2 => "OO",
                                 3 => ".O" },
                        "x" => { 1 => "OO",
                                 2 => "..",
                                 3 => "OO" },
                        "y" => { 1 => "OO",
                                 2 => ".O",
                                 3 => "OO" },
                        "z" => { 1 => "O.",
                                 2 => ".O",
                                 3 => "OO" },
                        " " => { 1 => "..",
                                 2 => "..",
                                 3 => ".." },
                  }
    # top_row = []
    # incoming_text.each_char { |char| top_row << letter_hash.values_at(char)[0][1] }
    # middle_row = []
    # incoming_text.each_char { |char| middle_row << letter_hash.values_at(char)[0][2] }
    # bottom_row = []
    # incoming_text.each_char { |char| bottom_row << letter_hash.values_at(char)[0][3] }

    rows = []
    formatted_rows = []
    3.times do |index|
      rows[index] = []
      formatted_rows[index] = []
      incoming_text.each_char { |char| rows[index] << letter_hash.values_at(char)[0][index+1] }
      formatted_rows[index] = rows[index].each_slice(40).map { |string| string.join }
    end

    # formatted_top_row = top_row.each_slice(40).map { |string| string.join }
    # formatted_middle_row = middle_row.each_slice(40).map { |string| string.join }
    # formatted_bottom_row = bottom_row.each_slice(40).map { |string| string.join }
    #
    # row1 = formatted_top_row
    # row2 = formatted_middle_row
    # row3 = formatted_bottom_row

    counter = formatted_rows[0].count
    index_num = 0
    formatted_text = ""
    counter.times do
      formatted_text << "#{formatted_rows[0][index_num]}\n#{formatted_rows[1][index_num]}\n#{formatted_rows[2][index_num]}\n\n"
      index_num += 1
    end
    formatted_text
  end



    # text_array = []
    #
    # new_text = ""
    # incoming_text.each_char {|char| new_text.concat(letter_hash.values_at(char)[0][1]) }
    # new_text.concat("\n")
    # incoming_text.each_char {|char| new_text.concat(letter_hash.values_at(char)[0][2]) }
    # new_text.concat("\n")
    # incoming_text.each_char {|char| new_text.concat(letter_hash.values_at(char)[0][3]) }
    # new_text
end
