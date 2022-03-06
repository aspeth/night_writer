require './lib/night_writer'

RSpec.describe NightWriter do
  context "using fake files" do
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
      expect(@night_writer.incoming_character_count).to eq(12)
    end
  end

  context "using real files" do
    it "can translate a single letter" do
      ARGV[0] = 'a.txt'
      ARGV[1] = 'braille.txt'
      night_writer = NightWriter.new
      expect(night_writer.translated_text).to eq("O. \n.. \n.. ")
    end

    it "can translate multiple letters" do
      ARGV[0] = 'message.txt'
      ARGV[1] = 'braille.txt'
      night_writer = NightWriter.new
      night_writer.translate
      expect(night_writer.translated_text).to eq("O. O. OO \n.. O. .. \n.. .. .. ")

      # expect(@night_writer.translated_text).to eq("
    end
  end
end
