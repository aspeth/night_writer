class NightReader
  attr_reader :incoming_text

  def initialize
    @incoming_text = File.open(ARGV[0], "r").read
    @outgoing_file = File.open(ARGV[1], "w+")
  end

  def incoming_character_count
    @incoming_text.length
  end
end