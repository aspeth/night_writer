require './lib/night_writer'

RSpec.describe NightWriter do
  before(:each) do
    ARGV[0] = 'fake_message.txt'
    ARGV[1] = 'fake_braille.txt'
    @night_writer = NightWriter.new
  end

  it "exists" do
    expect(@night_writer).to be_a(NightWriter)
  end

  it "can access incoming message" do
    expect(@night_writer.incoming_text.chomp).to eq('hello world')
  end

  it "can print the number of characters in first input file" do
    expect(@night_writer.character_count).to eq(12)
  end

  it "can move text to a new file" do
    expect(@night_writer.outgoing_text).to be_a(File)
  end
end
