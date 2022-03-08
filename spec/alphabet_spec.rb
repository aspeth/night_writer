require './lib/alphabet'

RSpec.describe Alphabet do
  it "exists" do
    alpha = Alphabet.new
    expect(alpha).to be_a(Alphabet)
  end

  it "has attributes" do
    alpha = Alphabet.new
    expect(alpha.letter_hash).to eq({"a" => ["O.", "..", ".."],
                    "b" => ["O.", "O.", ".."],
                    "c" => ["OO", "..", ".."],
                    "d" => ["OO", ".O", ".."],
                    "e" => ["O.", ".O", ".."],
                    "f" => ["OO", "O.", ".."],
                    "g" => ["OO", "OO", ".."],
                    "h" => ["O.", "OO", ".."],
                    "i" => [".O", "O.", ".."],
                    "j" => [".O", "OO", ".."],
                    "k" => ["O.", "..", "O."],
                    "l" => ["O.", "O.", "O."],
                    "m" => ["OO", "..", "O."],
                    "n" => ["OO", ".O", "O."],
                    "o" => ["O.", ".O", "O."],
                    "p" => ["OO", "O.", "O."],
                    "q" => ["OO", "OO", "O."],
                    "r" => ["O.", "OO", "O."],
                    "s" => [".O", "O.", "O."],
                    "t" => [".O", "OO", "O."],
                    "u" => ["O.", "..", "OO"],
                    "v" => ["O.", "O.", "OO"],
                    "w" => [".O", "OO", ".O"],
                    "x" => ["OO", "..", "OO"],
                    "y" => ["OO", ".O", "OO"],
                    "z" => ["O.", ".O", "OO"],
                    " " => ["..", "..", ".."],
             })
  end
end