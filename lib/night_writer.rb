require './lib/dictionary'

class NightWriter
  include Dictionary
  attr_reader :incoming_text

  def initialize
    @incoming_text = File.open(ARGV[0], "r").read
    @outgoing_file = File.open(ARGV[1], "w+")
  end

  def outgoing_text
    @outgoing_file.read
  end

  def incoming_character_count
    @incoming_text.length
  end

  def translate
    @outgoing_file.write(translated_text)
  end

  def translated_text
    translated_text = english_to_braille(@incoming_text.chomp)
  end
end
