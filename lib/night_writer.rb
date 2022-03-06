class NightWriter
  attr_reader :incoming_text

  def initialize
    @incoming_text = File.new(ARGV[0], "r")
  end

  def character_count
    @incoming_text.read.length
  end
end
