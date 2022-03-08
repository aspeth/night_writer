require './lib/night_object'

RSpec.describe NightObject do
  context "using fake files" do
    before(:each) do
      ARGV[0] = 'fake_message.txt'
      ARGV[1] = 'fake_braille.txt'
      @night_object = NightObject.new
    end

    it "exists" do
      expect(@night_object).to be_a(NightObject)
    end

    it "can access incoming message" do
      expect(@night_object.incoming_text.chomp).to eq('hello world')
    end

    it "can print the number of characters in first input file" do
      expect(@night_object.incoming_character_count).to eq(12)
    end
  end

  context "using real files" do
    it "can translate a single letter" do
      ARGV[0] = 'a.txt'
      ARGV[1] = 'new_a.txt'
      night_object = NightObject.new
      expect(night_object.translated_text).to eq("O.\n..\n..\n\n")
    end

    it "can read translated text" do
      ARGV[0] = 'a.txt'
      ARGV[1] = 'new_a.txt'
      night_object = NightObject.new
      expect(night_object.translate).to eq("O.\n..\n..\n\n")
    end

    it "can translate multiple letters" do
      ARGV[0] = 'abc.txt'
      ARGV[1] = 'new_abc.txt'
      night_object = NightObject.new
    end

    it "can place a line break every 80 characters" do
      ARGV[0] = '40.txt'
      ARGV[1] = 'new_40.txt'
      night_object = NightObject.new
      expect(night_object.translated_text[80]).to eq("\n")
    end
  end
end
