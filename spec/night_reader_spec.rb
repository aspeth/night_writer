require './lib/night_reader'

RSpec.describe NightReader do
  context "using fake files" do
    before(:each) do
      ARGV[0] = 'fake_message.txt'
      ARGV[1] = 'fake_braille.txt'
      @night_reader = NightReader.new
    end

    it "exists" do
      expect(@night_reader).to be_a(NightReader)
    end

    it "can access incoming message" do
      expect(@night_reader.incoming_text.chomp).to eq('hello world')
    end

    it "can print the number of characters in first input file" do
      expect(@night_reader.incoming_character_count).to eq(12)
    end
  end
end