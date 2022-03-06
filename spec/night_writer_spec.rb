require './lib/night_writer'

RSpec.describe NightWriter do
  before(:each) do
    @night_writer = NightWriter.new
  end

  it "exists" do
    expect(@night_writer).to be_a(NightWriter)
  end
end
