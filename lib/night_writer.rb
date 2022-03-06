class NightWriter
  attr_reader :incoming_text, :outgoing_text

  def initialize
    @incoming_text = File.new(ARGV[0], "r")
    @outgoing_text = File.new(ARGV[1], "w")
  end

  def character_count
    @incoming_text.read.length
  end

  def move_text
    @outgoing_text.write(@incoming_text)
  end
end
