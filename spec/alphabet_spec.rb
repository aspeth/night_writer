require './lib/alphabet'

RSpec.describe Alphabet do
  it "exists" do
    alpha = Alphabet.new
    expect(alpha).to be_a(Alphabet)
  end
end