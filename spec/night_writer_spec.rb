require './lib/night_writer'

RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new
  end

  it "exists" do
    expect(@night_writer).to be_a(NightWriter)
  end

  it "can access incoming message" do
    ARGV[0] = 'fake_message.txt'
    expect(@night_writer.incoming_text).to be_a(File)
  end
end
