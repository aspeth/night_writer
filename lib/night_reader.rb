require './lib/dictionary'
require './lib/night_object'

class NightReader < NightObject
  def translated_text
    translated_text = braille_to_english(@incoming_text.chomp)
  end
end